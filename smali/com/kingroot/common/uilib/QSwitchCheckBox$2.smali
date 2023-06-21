.class Lcom/kingroot/common/uilib/QSwitchCheckBox$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/common/uilib/QSwitchCheckBox$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/QSwitchCheckBox;->Z(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic QX:Lcom/kingroot/common/uilib/QSwitchCheckBox;

.field final synthetic QY:Z


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/QSwitchCheckBox;Z)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$2;->QX:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    iput-boolean p2, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$2;->QY:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$2;->QX:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    iget-boolean v1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$2;->QY:Z

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setSuperChecked(Z)V

    .line 601
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$2;->QX:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    new-instance v1, Lcom/kingroot/common/uilib/QSwitchCheckBox$2$1;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/QSwitchCheckBox$2$1;-><init>(Lcom/kingroot/common/uilib/QSwitchCheckBox$2;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 609
    return-void
.end method
