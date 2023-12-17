const {Sequelize , DataTypes} = require('sequelize')

const sequelize = new Sequelize(
    'testesequelize',
    'root',
    'admin',
    {
        host: 'localhost',
        dialect: 'mysql'
    }
)

const Autor = sequelize.define('autor', {
    autorID: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    nome: {
        type: DataTypes.STRING,
        allowNull: false
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
    }
})

const Editora = sequelize.define('editora', {
    editoraID: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    nome: {
        type: DataTypes.STRING,
        allowNull: false
    },
    localizacao: {
        type: DataTypes.STRING,
        allowNull: false
    }
})
Editora.hasMany(Autor)
const Livro = sequelize.define('livro', {
    livroID: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    titulo: {
        type: DataTypes.STRING,
        allowNull: false
    },
    anoPublicacao: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    isbn: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
    },
    editoraID:{
        type : DataTypes.INTEGER,
        references: 'editora',
        referencesKey: 'editoraID'
    }
})
Editora.hasMany(Livro)
Livro.hasOne(Editora)
const Genero = sequelize.define('genero', {
    generoID: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    nome: {
        type: DataTypes.STRING,
        allowNull: false
    }
})

Livro.belongsToMany(Genero)
Genero.belongsToMany(Livro)
// const LivroGenero = sequelize.define('livroGenero', {
//     livroID: {
//         type: DataTypes.INTEGER,
//         references: 'livro',
//         referencesKey: 'livroID'
//     },
//     generoID: {
//         type: DataTypes.INTEGER,
//         references: 'genero',
//         referencesKey: 'generoID'
//     }
// })

const Usuario = sequelize.define('usuario', {
    usuarioID: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    nome: {
        type: DataTypes.STRING,
        allowNull: false
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
    }
})

const Emprestimo = sequelize.define('emprestimo', {
    emprestimoID: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    nome: {
        type: DataTypes.STRING,
        allowNull: false
    },
    dataEmprestimo: {
        type: DataTypes.DATE,
        allowNull: false
    },
    dataDevolucao: {
        type: DataTypes.DATE,
        allowNull: false
    },
    livroID: {
        type: DataTypes.INTEGER,
        references: 'livro',
        referencesKey: 'livroID'
    },
    usuarioID: {
        type: DataTypes.INTEGER,
        references: 'usuario',
        referencesKey: 'usuarioID'
    }
})
Usuario.hasMany(Emprestimo)
Emprestimo.hasOne(Usuario)
const Reserva = sequelize.define('reserva', {
    reservaID: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    dataReserva: {
        type: DataTypes.DATE,
        allowNull: false
    },
    livroID: {
        type: DataTypes.INTEGER,
        references: 'livro',
        referencesKey: 'livroID'
    },
    usuarioID: {
        type: DataTypes.INTEGER,
        references: 'usuario',
        referencesKey: 'usuarioID'
    }
})
Usuario.hasMany(Reserva)
Reserva.hasOne(Usuario)