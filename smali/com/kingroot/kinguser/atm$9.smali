.class Lcom/kingroot/kinguser/atm$9;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atm;->Pk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 996
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$9;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 1000
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 1001
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$9;->this$0:Lcom/kingroot/kinguser/atm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atm;->b(Lcom/kingroot/kinguser/atm;Z)Z

    .line 1002
    return-void
.end method
