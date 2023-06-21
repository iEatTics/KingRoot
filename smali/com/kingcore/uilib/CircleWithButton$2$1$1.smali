.class Lcom/kingcore/uilib/CircleWithButton$2$1$1;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/CircleWithButton$2$1;->onAnimationEnd(Lcom/android/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic As:Lcom/kingcore/uilib/CircleWithButton$2$1;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/CircleWithButton$2$1;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/kingcore/uilib/CircleWithButton$2$1$1;->As:Lcom/kingcore/uilib/CircleWithButton$2$1;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 371
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 372
    return-void
.end method
