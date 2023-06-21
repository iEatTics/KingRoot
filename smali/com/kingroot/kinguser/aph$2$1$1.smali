.class Lcom/kingroot/kinguser/aph$2$1$1;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aph$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aHN:Lcom/kingroot/kinguser/aph$2$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aph$2$1;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kingroot/kinguser/aph$2$1$1;->aHN:Lcom/kingroot/kinguser/aph$2$1;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/aph$2$1$1;->aHN:Lcom/kingroot/kinguser/aph$2$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aph$2$1;->aHM:Lcom/kingroot/kinguser/aph$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/aph$2;->aHK:Lcom/kingroot/kinguser/api$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/api$a;->onFinish()V

    .line 56
    return-void
.end method
