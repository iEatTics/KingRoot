.class final Lcom/kingroot/kinguser/acz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/acz;->a(Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic abH:I

.field final synthetic abI:I

.field final synthetic abJ:I

.field final synthetic abK:I

.field final synthetic abL:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IIIILandroid/view/View;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kingroot/kinguser/acz$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/kingroot/kinguser/acz$1;->abH:I

    iput p3, p0, Lcom/kingroot/kinguser/acz$1;->abI:I

    iput p4, p0, Lcom/kingroot/kinguser/acz$1;->abJ:I

    iput p5, p0, Lcom/kingroot/kinguser/acz$1;->abK:I

    iput-object p6, p0, Lcom/kingroot/kinguser/acz$1;->abL:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/kingroot/kinguser/acz$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 47
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/kingroot/kinguser/acz$1;->abH:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 48
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/kingroot/kinguser/acz$1;->abI:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 49
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/kingroot/kinguser/acz$1;->abJ:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 50
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/kingroot/kinguser/acz$1;->abK:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 51
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/kingroot/kinguser/acz$1;->val$view:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/acz$1;->abL:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 55
    return-void
.end method
