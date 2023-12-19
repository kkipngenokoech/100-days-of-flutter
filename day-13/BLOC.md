# BLOC   - BUSINESS LOGIC

BloC takes input events and produce output states   

events are inputs to the BloC, they are dispatched in response to user interactions 

blocs are used for two main reasons:

1. their public api consists of simple outputs and inputs
2. you can use the same blocs for both website and flutter

BLOCS act as the middleman between services, backends, or two widgets

## HOW DO BLOCS WORK?

it has two purposes:

1. expose streams that allow widgets to update state
2. they should tell widgets when there's new information that they need to rerender

## core components 

the core component of BloC is:

1. Bloc - manages the state and business logic, events + state
2. Event - represemts actions or events that can trigger a change in state, carry data from UI to shared states
3. State - represents the state of the application at any given point - it is the shared storage, it stores data

## BlocBuilder

BlocBuilder is a Flutter widget provided by the flutter_bloc package. It is a convenient way to rebuild a part of your UI in response to changes in the state of a BLoC (Business Logic Component). The primary purpose of BlocBuilder is to listen for state changes and rebuild its child widget tree whenever the state changes.

it handles building widgets in response to new states

## BloC Events

registered in the BloC classes, they are dispatched to the BloC and the BloC reacts to this events by updating its state

how to define an event:

```dart
abstract class CounterEvent{}
```

## BloC states

they are for emitting states - informing UI that, something has happened. States are emitted using `emit()` function.


BloC emits states in response to events, and the UI can react to this states to update its presentation

## Implementations of BloC

