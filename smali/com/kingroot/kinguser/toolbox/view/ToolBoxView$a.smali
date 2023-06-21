.class public Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public aQX:I

.field public bmI:I

.field public bmJ:Z

.field public bmK:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

.field public bmL:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public iconUrl:Ljava/lang/String;

.field public jumpType:I

.field public mainTitle:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public softTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmI:I

    .line 480
    iput v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->aQX:I

    .line 481
    iput-boolean v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmJ:Z

    .line 482
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    .line 483
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->softTitle:Ljava/lang/String;

    .line 484
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->iconUrl:Ljava/lang/String;

    .line 485
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->pkgName:Ljava/lang/String;

    .line 486
    iput-object v2, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmK:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 490
    iput v1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->jumpType:I

    .line 491
    iput-object v2, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmL:Ljava/lang/Object;

    return-void
.end method
