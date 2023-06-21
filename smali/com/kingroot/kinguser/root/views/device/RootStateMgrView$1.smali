.class Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;->XF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bhB:Lcom/kingroot/kinguser/root/views/circles/GradientCircle;

.field final synthetic bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;Lcom/kingroot/kinguser/root/views/circles/GradientCircle;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$1;->bhC:Lcom/kingroot/kinguser/root/views/device/RootStateMgrView;

    iput-object p2, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$1;->bhB:Lcom/kingroot/kinguser/root/views/circles/GradientCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$1;->bhB:Lcom/kingroot/kinguser/root/views/circles/GradientCircle;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->gD()V

    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/device/RootStateMgrView$1;->bhB:Lcom/kingroot/kinguser/root/views/circles/GradientCircle;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 373
    const/4 v0, 0x1

    return v0
.end method
