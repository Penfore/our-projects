# 📋 Our Projects

<div align="center">
  <img src="https://img.shields.io/badge/Rails-8.0-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white" alt="Rails 8" />
  <img src="https://img.shields.io/badge/Ruby-3.3-CC342D?style=for-the-badge&logo=ruby&logoColor=white" alt="Ruby" />
  <img src="https://img.shields.io/badge/Hotwire-Turbo-FF6B6B?style=for-the-badge&logo=hotwire&logoColor=white" alt="Hotwire" />
  <img src="https://img.shields.io/badge/TailwindCSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white" alt="TailwindCSS" />
  <img src="https://img.shields.io/badge/SQLite-003B57?style=for-the-badge&logo=sqlite&logoColor=white" alt="SQLite" />
  <img src="https://img.shields.io/badge/version-0.1.0-blue?style=for-the-badge" alt="Version" />
  <img src="https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge" alt="License" />
  <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge" alt="PRs Welcome" />
</div>

<div align="center">
  <h3>🎯 Modern Project Management with Real-time Collaboration</h3>
  <p>A beautiful, efficient Trello-inspired project management application built with Rails 8 and modern web technologies.</p>
</div>

---

## ✨ Features

> **Note**: This project is in active development (v0.1.0). Core functionality is being implemented following modern Rails best practices.

### 🚧 **Current Features**
- 🏗️ **Modern Rails 8 Architecture** - Built with the latest Rails features and conventions ✅
- 👥 **User Authentication** - Secure user management with Devise ✅
- 📊 **Project Management** - Create and organize projects with team collaboration ✅
- 📝 **Board Structure** - Lists and cards organization (Trello-style) ✅
- 🔒 **Authorization** - Role-based access control with Pundit ✅
- 🎨 **Modern UI** - Clean, responsive design with TailwindCSS ✅

### 📋 **Planned Features**
- ⚡ **Real-time Updates** - Live collaboration with Turbo Streams
- 🖱️ **Drag & Drop** - Intuitive card and list management with SortableJS
- 📅 **Due Dates** - Task scheduling and deadline tracking
- 👤 **Card Assignment** - Assign tasks to team members
- 📊 **Project Statistics** - Track progress and productivity metrics
- 🔔 **Notifications** - Stay updated on project changes
- 📱 **Mobile Responsive** - Works seamlessly on all devices
- 🌙 **Dark/Light Theme** - Multiple theme options
- 📤 **Export/Import** - Backup and migrate project data

## 📱 Screenshots

*Screenshots will be added as features are implemented. Currently showing basic project structure (v0.1.0)*

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- [Ruby](https://ruby-lang.org/) (3.3.0 or later)
- [Rails](https://rubyonrails.org/) (8.0 or later)
- [SQLite](https://www.sqlite.org/) (3.8.3 or later)
- [Node.js](https://nodejs.org/) (18 or later)
- [Git](https://git-scm.com/)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Penfore/our-projects.git
   cd our-projects
   ```

2. **Install Ruby dependencies**
   ```bash
   bundle install
   ```

3. **Install JavaScript dependencies**
   ```bash
   npm install
   ```

4. **Setup database**
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

5. **Start the development server**
   ```bash
   bin/dev
   ```

6. **Visit the application**
   ```
   http://localhost:3000
   ```

### Environment Variables

Create a `.env` file in the root directory with:

```env
DATABASE_URL=sqlite://db/development.sqlite3
SECRET_KEY_BASE=your_secret_key_here
```

## 🏗️ Architecture

This project follows **modern Rails conventions** and best practices:

- **Rails 8** - Latest Rails features including Solid Queue, Solid Cache, and Solid Cable
- **Hotwire** - Real-time interactivity without complex JavaScript frameworks
- **Clean Architecture** - Organized code structure for maintainability
- **Component-Based UI** - Reusable ViewComponents for consistent design
- **Test-Driven Development** - Comprehensive test suite with RSpec

### Project Structure

```
app/
├── controllers/              # Application controllers
├── models/                  # Domain models and business logic
├── views/                   # HTML templates and partials
├── components/              # ViewComponents for reusable UI
├── javascript/              # Stimulus controllers and JavaScript
└── assets/                  # Stylesheets and static assets

spec/                        # Test specifications
├── models/                  # Model tests
├── requests/               # Integration tests
├── features/               # Feature tests
└── factories/              # Test data factories
```

### Tech Stack

- **Backend**: Ruby on Rails 8.0+
- **Database**: SQLite
- **Frontend**: Hotwire (Turbo + Stimulus)
- **Styling**: TailwindCSS
- **Authentication**: Devise
- **Authorization**: Pundit
- **Testing**: RSpec + FactoryBot
- **Deployment**: Docker + Kamal

### Domain Models

- **User** - Application users with authentication
- **Project** - Main project containers with ownership
- **List** - Board columns (To Do, In Progress, Done)
- **Card** - Individual tasks within lists
- **ProjectMembership** - Team collaboration and permissions

## 🧪 Testing

Run all tests:
```bash
bundle exec rspec
```

Run specific test types:
```bash
# Model tests
bundle exec rspec spec/models

# Request tests
bundle exec rspec spec/requests

# Feature tests
bundle exec rspec spec/features
```

Run tests with coverage:
```bash
bundle exec rspec --format documentation
```

## 📋 Development Roadmap

### Phase 1: Core Foundation ✅
- [x] Rails 8 setup with modern stack
- [x] User authentication and authorization
- [x] Basic project, list, and card models
- [x] Database schema and migrations
- [x] Test framework setup

### Phase 2: Basic UI Implementation 🚧
- [ ] Project dashboard and navigation
- [ ] Board view with lists and cards
- [ ] Basic CRUD operations
- [ ] Responsive design implementation

### Phase 3: Real-time Features 📝
- [ ] Turbo Streams for live updates
- [ ] Drag and drop functionality
- [ ] Real-time collaboration
- [ ] Optimistic UI updates

### Phase 4: Advanced Features 📝
- [ ] Card assignments and due dates
- [ ] Project statistics and reporting
- [ ] Notification system
- [ ] Advanced search and filtering

### Phase 5: Polish & Performance 📝
- [ ] Performance optimizations
- [ ] Accessibility improvements
- [ ] Mobile app (optional)
- [ ] API for third-party integrations

## 🤝 Contributing

We love contributions! Please read our [Contributing Guide](CONTRIBUTING.md) to learn about our development process.

### Quick Start for Contributors

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'Add some amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)
5. **Open** a Pull Request

### Development Guidelines

- Follow [Ruby Style Guide](https://rubystyle.guide/) and [Rails Best Practices](https://rails-bestpractices.com/)
- Write meaningful commit messages
- Add tests for new features
- Update documentation as needed
- Ensure code passes `rubocop` and `rails_best_practices`

### Types of Contributions

- 🐛 **Bug reports** - Help us identify issues
- 💡 **Feature requests** - Suggest new functionality
- 🔧 **Code contributions** - Implement features or fix bugs
- 📚 **Documentation** - Improve docs and examples
- 🎨 **Design** - UI/UX improvements
- 🌍 **Translations** - Help localize the app

## 🤖 AI-Assisted Development

This project embraces modern development practices and acknowledges the role of AI in today's software development landscape.

### Our Position on AI

- 🎯 **AI as a Tool**: We recognize that AI tools (like GitHub Copilot, ChatGPT, etc.) are valuable assistants that help developers learn, explore new technologies, and increase productivity
- 👥 **Human Review Required**: While AI can assist with code generation and problem-solving, **all code must be reviewed, understood, and validated by real humans** before being merged
- 🧠 **Learning Enhancement**: AI tools are excellent for learning new patterns, understanding complex architectures, and exploring different implementation approaches
- 🔍 **Quality Assurance**: Contributors should always understand the code they're submitting, regardless of how it was generated

### Guidelines for AI-Assisted Contributions

- ✅ **Use AI tools** to help with boilerplate code, documentation, or learning new concepts
- ✅ **Review and understand** all AI-generated code before submitting
- ✅ **Test thoroughly** - AI-generated code should be tested just like any other code
- ✅ **Document your approach** - If AI helped solve a complex problem, consider documenting the solution for others
- ❌ **Don't blindly copy-paste** AI-generated code without understanding it
- ❌ **Don't rely solely on AI** for architectural decisions or critical business logic

### The Human Touch

While we embrace AI assistance, we believe in:
- **Human creativity** in solving complex problems
- **Human judgment** in making architectural decisions
- **Human empathy** in understanding user needs
- **Human responsibility** for code quality and security

This project is built by humans, for humans, with AI as a helpful companion in our development journey.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Authors & Contributors

- **[Fúlvio Leo]** - *Initial work* - [@Penfore](https://github.com/Penfore)

See also the list of [contributors](https://github.com/Penfore/our-projects/contributors) who participated in this project.

## 📞 Support & Community

- 🐛 **Issues**: [GitHub Issues](https://github.com/Penfore/our-projects/issues)
- 💬 **Discussions**: [GitHub Discussions](https://github.com/Penfore/our-projects/discussions)
- 📧 **Email**: fulvioleo.dev@pm.me

## 🙏 Acknowledgments

- Inspired by [Trello](https://trello.com/) for project management workflows
- Built with [Ruby on Rails](https://rubyonrails.org/)
- Styled with [TailwindCSS](https://tailwindcss.com/)
- Real-time features powered by [Hotwire](https://hotwired.dev/)
- Thanks to all [contributors](https://github.com/Penfore/our-projects/contributors)

## 📈 Project Stats

<div align="center">
  <img src="https://img.shields.io/github/stars/Penfore/our-projects?style=social" alt="GitHub stars" />
  <img src="https://img.shields.io/github/forks/Penfore/our-projects?style=social" alt="GitHub forks" />
  <img src="https://img.shields.io/github/issues/Penfore/our-projects" alt="GitHub issues" />
  <img src="https://img.shields.io/github/issues-pr/Penfore/our-projects" alt="GitHub pull requests" />
</div>

---

<div align="center">
  <p>Made with ❤️ and ☕ by Rails developers, for project managers</p>
  <p>If this project helped you, please consider giving it a ⭐!</p>
</div>
