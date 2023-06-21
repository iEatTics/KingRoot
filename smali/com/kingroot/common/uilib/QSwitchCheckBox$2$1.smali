.class Lcom/kingroot/common/uilib/QSwitchCheckBox$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/QSwitchCheckBox$2;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic QZ:Lcom/kingroot/common/uilib/QSwitchCheckBox$2;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/QSwitchCheckBox$2;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$2$1;->QZ:Lcom/kingroot/common/uilib/QSwitchCheckBox$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/kingroot/common/uilib/QSwitchCheckBox$2$1;->QZ:Lcom/kingroot/common/uilib/QSwitchCheckBox$2;

    iget-object v0, v0, Lcom/kingroot/common/uilib/QSwitchCheckBox$2;->QX:Lcom/kingroot/common/uilib/QSwitchCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/QSwitchCheckBox;->setEnabled(Z)V

    .line 606
    return-void
.end method
