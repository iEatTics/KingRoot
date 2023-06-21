.class public Lcom/kingroot/kinguser/bwr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final bSs:J

.field public static final bSt:J

.field public static final bSu:I

.field public static final bSv:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/kingroot/kinguser/bwr;->bSs:J

    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/kingroot/kinguser/bwr;->bSt:J

    .line 19
    sget-wide v0, Lcom/kingroot/kinguser/bwr;->bSs:J

    sget-wide v2, Lcom/kingroot/kinguser/bwr;->bSt:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/kingroot/kinguser/bwr;->bSu:I

    .line 25
    sget-wide v0, Lcom/kingroot/kinguser/bwr;->bSs:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/kingroot/kinguser/bwr;->bSv:J

    return-void
.end method
