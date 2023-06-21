.class public Lcom/kingroot/kinguser/vf;
.super Lcom/kingroot/kinguser/vj;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/kinguser/vj;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/kingroot/kinguser/vf;->mName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/kingroot/kinguser/vf;->ra:Ljava/lang/String;

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/vf;->mType:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/kinguser/vj;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/kingroot/kinguser/vf;->mName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/kingroot/kinguser/vf;->ra:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/kingroot/kinguser/vf;->KW:Ljava/lang/String;

    .line 23
    iput-wide p4, p0, Lcom/kingroot/kinguser/vf;->mSize:J

    .line 24
    return-void
.end method
