.class final Lcom/kingroot/kinguser/ang$1;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ang;->a(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Ap:Landroid/widget/ImageView;

.field final synthetic aAD:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/kingroot/kinguser/ang$1;->aAD:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/kingroot/kinguser/ang$1;->Ap:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/ang$1;->aAD:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/ang$1;->Ap:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 42
    return-void
.end method
