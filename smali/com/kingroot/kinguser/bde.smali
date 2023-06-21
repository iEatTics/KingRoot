.class public Lcom/kingroot/kinguser/bde;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private timestamp:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/kingroot/kinguser/bde;->title:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lcom/kingroot/kinguser/bde;->timestamp:J

    .line 14
    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/kingroot/kinguser/bde;->timestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/bde;->title:Ljava/lang/String;

    return-object v0
.end method
