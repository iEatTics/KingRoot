.class public Lcom/kingroot/kinguser/zv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/zv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private WW:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/kingroot/kinguser/zv$a;->WW:J

    return-void
.end method


# virtual methods
.method public aa(J)Lcom/kingroot/kinguser/zv$a;
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/kingroot/kinguser/zv$a;->WW:J

    .line 51
    return-object p0
.end method

.method public pH()Lcom/kingroot/kinguser/zv;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lcom/kingroot/kinguser/zv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/zv;-><init>(Lcom/kingroot/kinguser/zv$1;)V

    .line 57
    iget-wide v2, p0, Lcom/kingroot/kinguser/zv$a;->WW:J

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/zv;->a(Lcom/kingroot/kinguser/zv;J)J

    .line 58
    return-object v0
.end method
