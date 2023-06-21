.class public Lcom/kingroot/kinguser/bdh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public desc:Ljava/lang/String;

.field public level:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bdh;->name:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bdh;->level:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bdh;->desc:Ljava/lang/String;

    .line 17
    return-void
.end method
