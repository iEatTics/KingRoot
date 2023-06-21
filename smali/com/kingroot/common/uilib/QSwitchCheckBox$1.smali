.class Lcom/kingroot/common/uilib/QSwitchCheckBox$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/QSwitchCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic QX:Lcom/kingroot/common/uilib/QSwitchCheckBox;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/QSwitchCheckBox;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$1;->QX:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$1;->QX:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->invalidate()V

    .line 179
    return-void
.end method
