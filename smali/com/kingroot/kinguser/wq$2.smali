.class Lcom/kingroot/kinguser/wq$2;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/wq;->a(Lcom/kingroot/kinguser/wq$a;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Nq:Lcom/kingroot/kinguser/wq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/wq;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/kingroot/kinguser/wq$2;->Nq:Lcom/kingroot/kinguser/wq;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationStart(Lcom/android/animation/Animator;)V

    .line 126
    return-void
.end method
