# Contributing to Our Projects

First off, thank you for considering contributing to Our Projects! 🎉

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [How Can I Contribute?](#how-can-i-contribute)
- [Development Process](#development-process)
- [Style Guidelines](#style-guidelines)
- [Commit Guidelines](#commit-guidelines)
- [Pull Request Process](#pull-request-process)

## Code of Conduct

This project and everyone participating in it is governed by our Code of Conduct. By participating, you are expected to uphold this code.

### Our Pledge

We pledge to make participation in our project a harassment-free experience for everyone, regardless of age, body size, disability, ethnicity, gender identity and expression, level of experience, nationality, personal appearance, race, religion, or sexual identity and orientation.

### Our Standards

Examples of behavior that contributes to creating a positive environment include:
- Using welcoming and inclusive language
- Being respectful of differing viewpoints and experiences
- Gracefully accepting constructive criticism
- Focusing on what is best for the community
- Showing empathy towards other community members

## Getting Started

### Prerequisites

- Ruby 3.3.0 or later
- Rails 8.0 or later
- PostgreSQL 12 or later
- Node.js 18 or later
- Git
- A code editor (VS Code, RubyMine, etc.)

### Setup Development Environment

1. Fork the repository on GitHub
2. Clone your fork locally:
   ```bash
   git clone https://github.com/your-username/our_projects.git
   cd our_projects
   ```
3. Add the original repository as upstream:
   ```bash
   git remote add upstream https://github.com/Penfore/our_projects.git
   ```
4. Install dependencies:
   ```bash
   bundle install
   npm install
   ```
5. Setup the database:
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```
6. Run the app to make sure everything works:
   ```bash
   bin/dev
   ```

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues as you might find that the problem has already been reported.

When you create a bug report, please include:
- **A clear and descriptive title**
- **Steps to reproduce** the behavior
- **Expected behavior**
- **Actual behavior**
- **Screenshots** if applicable
- **Environment information** (OS, Ruby version, Rails version, etc.)
- **Browser information** (if UI related)

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion, please include:
- **A clear and descriptive title**
- **A detailed description** of the suggested enhancement
- **The motivation** for the enhancement
- **Examples** of how the enhancement would be used
- **Mockups or wireframes** for UI changes (if applicable)

### Code Contributions

#### Good First Issues

Look for issues labeled `good first issue` if you're new to the project.

#### Areas Where We Need Help

- UI/UX improvements with TailwindCSS
- Hotwire/Turbo Stream implementations
- Stimulus controllers for interactivity
- Performance optimizations
- Testing coverage (RSpec)
- Documentation improvements
- Accessibility features
- Mobile responsiveness

## Development Process

### Branching Strategy

We use a simplified Git flow:
- `main` - Production ready code
- `develop` - Integration branch for features
- `feature/feature-name` - Feature branches
- `bugfix/bug-description` - Bug fix branches
- `hotfix/critical-fix` - Critical fixes

### Workflow

1. Create a new branch from `develop`:
   ```bash
   git checkout develop
   git pull upstream develop
   git checkout -b feature/your-feature-name
   ```

2. Make your changes and commit them:
   ```bash
   git add .
   git commit -m "feat: add your feature description"
   ```

3. Push to your fork:
   ```bash
   git push origin feature/your-feature-name
   ```

4. Create a Pull Request

## Style Guidelines

### Ruby/Rails Code Style

We follow standard Ruby and Rails conventions:

- Use [RuboCop](https://rubocop.org/) for code styling
- Follow the [Ruby Style Guide](https://rubystyle.guide/)
- Follow [Rails Best Practices](https://rails-bestpractices.com/)
- Run `rubocop` before committing
- Run `rails_best_practices` for additional checks

### Frontend Guidelines

- Use **TailwindCSS** for styling (avoid custom CSS when possible)
- Follow **Stimulus** conventions for JavaScript controllers
- Use **Turbo Frames** and **Turbo Streams** for dynamic content
- Ensure mobile-first responsive design
- Test in multiple browsers

### Database Guidelines

- Use meaningful migration names
- Add database indexes for frequently queried columns
- Use foreign key constraints
- Write reversible migrations
- Add comments for complex database changes

### Testing Guidelines

- Write tests for all new features
- Use **RSpec** for testing framework
- Use **FactoryBot** for test data
- Aim for good test coverage
- Test both happy path and edge cases
- Use feature tests for user workflows

## Commit Guidelines

We follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

### Commit Format

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

### Types

- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation only changes
- `style`: Changes that don't affect code meaning (white-space, formatting, etc.)
- `refactor`: A code change that neither fixes a bug nor adds a feature
- `perf`: A code change that improves performance
- `test`: Adding missing tests or correcting existing tests
- `chore`: Changes to the build process or auxiliary tools

### Examples

```bash
feat(projects): add project creation form
fix(cards): resolve drag and drop issue
docs(readme): update installation instructions
test(models): add validation tests for Project model
style(views): format project list template
refactor(controllers): extract common authorization logic
```

## Pull Request Process

### Before Submitting

1. Ensure your code follows the style guidelines
2. Run `rubocop` and fix any issues
3. Run `bundle exec rspec` and ensure all tests pass
4. Add tests for new functionality
5. Update documentation if needed
6. Rebase your branch on the latest `develop`

### Pull Request Template

When creating a PR, please include:

- **Description** - Clear description of what the PR does
- **Type of Change** - Bug fix, new feature, documentation, etc.
- **Testing** - How you tested your changes
- **Screenshots** - If UI changes are involved
- **Breaking Changes** - Any breaking changes (if applicable)
- **Checklist** - Ensure all requirements are met

### Review Process

1. At least one maintainer must approve the PR
2. All CI checks must pass
3. No merge conflicts
4. Code must follow project standards
5. Tests must pass and coverage should not decrease

### After Approval

- PRs are typically merged by maintainers
- Your branch will be deleted after merge
- Thank you for your contribution! 🎉

## Testing Your Changes

### Running Tests

```bash
# Run all tests
bundle exec rspec

# Run specific test files
bundle exec rspec spec/models/project_spec.rb

# Run tests with specific tags
bundle exec rspec --tag focus

# Run tests in parallel (faster)
bundle exec parallel_rspec spec/
```

### Manual Testing

1. Start the development server: `bin/dev`
2. Test your changes in the browser
3. Test on different screen sizes (mobile, tablet, desktop)
4. Test with different user roles (if applicable)
5. Check browser console for JavaScript errors

## Recognition

Contributors are recognized in:
- README.md contributors section
- Release notes for significant contributions
- Special recognition for long-term contributors

## Questions?

Feel free to:
- Open a GitHub Discussion
- Create an issue with the `question` label
- Contact maintainers directly at fulvioleo.dev@pm.me

## Additional Resources

- [Rails Guides](https://guides.rubyonrails.org/)
- [Hotwire Documentation](https://hotwired.dev/)
- [TailwindCSS Documentation](https://tailwindcss.com/docs)
- [RSpec Documentation](https://rspec.info/)
- [Ruby Style Guide](https://rubystyle.guide/)

Thank you for contributing to Our Projects! 📋✨
