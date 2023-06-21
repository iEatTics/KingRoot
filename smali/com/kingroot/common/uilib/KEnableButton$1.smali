.class Lcom/kingroot/common/uilib/KEnableButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/KEnableButton;->a(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic NH:Lcom/kingroot/common/uilib/KEnableButton;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/KEnableButton;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/kingroot/common/uilib/KEnableButton$1;->NH:Lcom/kingroot/common/uilib/KEnableButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/kingroot/common/uilib/KEnableButton$1;->NH:Lcom/kingroot/common/uilib/KEnableButton;

    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton$1;->NH:Lcom/kingroot/common/uilib/KEnableButton;

    invoke-static {v0}, Lcom/kingroot/common/uilib/KEnableButton;->a(Lcom/kingroot/common/uilib/KEnableButton;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/kingroot/common/uilib/KEnableButton;->setEnable(Z)V

    .line 125
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton$1;->NH:Lcom/kingroot/common/uilib/KEnableButton;

    invoke-static {v0}, Lcom/kingroot/common/uilib/KEnableButton;->b(Lcom/kingroot/common/uilib/KEnableButton;)Lcom/kingroot/common/uilib/KEnableButton$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton$1;->NH:Lcom/kingroot/common/uilib/KEnableButton;

    invoke-static {v0}, Lcom/kingroot/common/uilib/KEnableButton;->b(Lcom/kingroot/common/uilib/KEnableButton;)Lcom/kingroot/common/uilib/KEnableButton$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/common/uilib/KEnableButton$1;->NH:Lcom/kingroot/common/uilib/KEnableButton;

    invoke-static {v1}, Lcom/kingroot/common/uilib/KEnableButton;->a(Lcom/kingroot/common/uilib/KEnableButton;)Z

    move-result v1

    iget-object v2, p0, Lcom/kingroot/common/uilib/KEnableButton$1;->NH:Lcom/kingroot/common/uilib/KEnableButton;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/common/uilib/KEnableButton$a;->a(ZLandroid/view/View;)V

    .line 129
    :cond_0
    return-void

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
