.class Lcom/kingcore/uilib/CircleWithButton$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/CircleWithButton;->setCentreViewText(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic An:Lcom/kingcore/uilib/CircleWithButton;

.field final synthetic At:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/CircleWithButton;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/kingcore/uilib/CircleWithButton$3;->An:Lcom/kingcore/uilib/CircleWithButton;

    iput-object p2, p0, Lcom/kingcore/uilib/CircleWithButton$3;->At:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton$3;->An:Lcom/kingcore/uilib/CircleWithButton;

    invoke-static {v0}, Lcom/kingcore/uilib/CircleWithButton;->e(Lcom/kingcore/uilib/CircleWithButton;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/kingcore/uilib/CircleWithButton$3$1;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/CircleWithButton$3$1;-><init>(Lcom/kingcore/uilib/CircleWithButton$3;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 415
    return-void
.end method
