.class Lcom/kingcore/uilib/ClipView$2;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/ClipView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AD:Lcom/kingcore/uilib/ClipView;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/ClipView;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/kingcore/uilib/ClipView$2;->AD:Lcom/kingcore/uilib/ClipView;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 83
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView$2;->AD:Lcom/kingcore/uilib/ClipView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingcore/uilib/ClipView;->a(Lcom/kingcore/uilib/ClipView;Z)Z

    .line 84
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView$2;->AD:Lcom/kingcore/uilib/ClipView;

    iget-object v1, p0, Lcom/kingcore/uilib/ClipView$2;->AD:Lcom/kingcore/uilib/ClipView;

    invoke-static {v1}, Lcom/kingcore/uilib/ClipView;->a(Lcom/kingcore/uilib/ClipView;)Lcom/kingcore/uilib/ClipView$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ClipView;->a(Lcom/kingcore/uilib/ClipView$b;)V

    .line 85
    return-void
.end method
