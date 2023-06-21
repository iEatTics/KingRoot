.class Lcom/kingroot/common/uilib/MainExpOuterPointerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/common/uilib/MainExpOutCircleView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/MainExpOuterPointerView;->setOuterCircleView(Lcom/kingroot/common/uilib/MainExpOutCircleView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pn:Lcom/kingroot/common/uilib/MainExpOuterPointerView;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/MainExpOuterPointerView;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView$1;->Pn:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nQ()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView$1;->Pn:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->a(Lcom/kingroot/common/uilib/MainExpOuterPointerView;Z)Z

    .line 105
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView$1;->Pn:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 106
    return-void
.end method

.method public nR()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView$1;->Pn:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->a(Lcom/kingroot/common/uilib/MainExpOuterPointerView;Z)Z

    .line 111
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView$1;->Pn:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 112
    return-void
.end method
