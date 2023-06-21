.class Lcom/kingroot/kinguser/axg$10;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axg;->c(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYv:Lcom/kingroot/kinguser/axg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axg;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/kingroot/kinguser/axg$10;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$10;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-static {v0}, Lcom/kingroot/kinguser/axg;->a(Lcom/kingroot/kinguser/axg;)Lcom/kingroot/kinguser/auh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/auh$a;->PZ()V

    .line 289
    return-void
.end method
