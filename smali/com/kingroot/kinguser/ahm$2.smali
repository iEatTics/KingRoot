.class Lcom/kingroot/kinguser/ahm$2;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ahm;->a(Landroid/view/View;Landroid/view/View;Lcom/kingcore/uilib/SlideFlashTextView;Landroid/view/WindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aqV:Lcom/kingcore/uilib/SlideFlashTextView;

.field final synthetic aqW:Landroid/view/View;

.field final synthetic aqX:Landroid/view/WindowManager;

.field final synthetic aqY:Landroid/view/View;

.field final synthetic aqZ:Lcom/kingroot/kinguser/ahm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ahm;Lcom/kingcore/uilib/SlideFlashTextView;Landroid/view/View;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/kingroot/kinguser/ahm$2;->aqZ:Lcom/kingroot/kinguser/ahm;

    iput-object p2, p0, Lcom/kingroot/kinguser/ahm$2;->aqV:Lcom/kingcore/uilib/SlideFlashTextView;

    iput-object p3, p0, Lcom/kingroot/kinguser/ahm$2;->aqW:Landroid/view/View;

    iput-object p4, p0, Lcom/kingroot/kinguser/ahm$2;->aqX:Landroid/view/WindowManager;

    iput-object p5, p0, Lcom/kingroot/kinguser/ahm$2;->aqY:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 4

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/ahm$2;->aqV:Lcom/kingcore/uilib/SlideFlashTextView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/SlideFlashTextView;->gY()V

    .line 161
    new-instance v0, Lcom/kingroot/kinguser/ahm$2$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ahm$2$1;-><init>(Lcom/kingroot/kinguser/ahm$2;)V

    const-wide/16 v2, 0xdac

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 189
    return-void
.end method
