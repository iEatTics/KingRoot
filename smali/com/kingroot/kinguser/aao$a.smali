.class public Lcom/kingroot/kinguser/aao$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field XD:Z

.field public XE:Ljava/lang/String;

.field public XF:Ljava/lang/String;

.field public XG:Z

.field componentName:Landroid/content/ComponentName;

.field public retCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aao$a;->XD:Z

    .line 257
    const/16 v0, -0xa

    iput v0, p0, Lcom/kingroot/kinguser/aao$a;->retCode:I

    .line 262
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aao$a;->XE:Ljava/lang/String;

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aao$a;->XF:Ljava/lang/String;

    .line 271
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aao$a;->XG:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const-string v0, ""

    return-object v0
.end method
