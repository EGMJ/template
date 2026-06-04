---
name: frontend-development
description: Guidelines for frontend development tasks
---

# Frontend Development

When working on frontend code:

## Components
- Keep components small and focused
- Separate presentational and container components
- Use composition over prop drilling
- Implement proper loading and error states

## State Management
- Keep state as local as possible
- Lift state only when truly shared
- Use server state libraries for API data (React Query, SWR)
- Avoid redundant state that can be derived

## Accessibility
- Use semantic HTML elements
- Add ARIA labels where needed
- Ensure keyboard navigation works
- Test with screen readers for critical flows

## Performance
- Lazy-load routes and heavy components
- Optimize images (WebP, proper sizing)
- Minimize bundle size — audit imports
- Use virtualization for long lists
