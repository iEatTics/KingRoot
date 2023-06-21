.class Lcom/kingroot/common/uilib/MarqueeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/MarqueeView;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic At:Landroid/widget/TextView;

.field final synthetic Pt:I

.field final synthetic Pu:Lcom/kingroot/common/uilib/MarqueeView;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/MarqueeView;ILandroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/kingroot/common/uilib/MarqueeView$1;->Pu:Lcom/kingroot/common/uilib/MarqueeView;

    iput p2, p0, Lcom/kingroot/common/uilib/MarqueeView$1;->Pt:I

    iput-object p3, p0, Lcom/kingroot/common/uilib/MarqueeView$1;->At:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kingroot/common/uilib/MarqueeView$1;->Pu:Lcom/kingroot/common/uilib/MarqueeView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/MarqueeView;->a(Lcom/kingroot/common/uilib/MarqueeView;)Lcom/kingroot/common/uilib/MarqueeView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/kingroot/common/uilib/MarqueeView$1;->Pu:Lcom/kingroot/common/uilib/MarqueeView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/MarqueeView;->a(Lcom/kingroot/common/uilib/MarqueeView;)Lcom/kingroot/common/uilib/MarqueeView$a;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/common/uilib/MarqueeView$1;->Pt:I

    iget-object v2, p0, Lcom/kingroot/common/uilib/MarqueeView$1;->At:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/common/uilib/MarqueeView$a;->a(ILandroid/widget/TextView;)V

    .line 133
    :cond_0
    return-void
.end method
