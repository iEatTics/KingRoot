.class public Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/util/protect/DeviceStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uptime"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field boottime:J

.field idletime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-wide v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;->boottime:J

    .line 290
    iput-wide v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;->idletime:J

    .line 291
    return-void
.end method

.method static acC()Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;
    .locals 4

    .prologue
    .line 294
    new-instance v0, Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;

    invoke-direct {v0}, Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;-><init>()V

    .line 296
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/uptime"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->t(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 299
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 300
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 301
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 303
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-long v2, v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;->boottime:J

    .line 304
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-long v2, v1

    iput-wide v2, v0, Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;->idletime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_0
    :goto_0
    return-object v0

    .line 305
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;)Z
    .locals 4

    .prologue
    .line 314
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;->boottime:J

    iget-wide v2, p1, Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;->boottime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;->idletime:J

    iget-wide v2, p1, Lcom/kingroot/kinguser/util/protect/DeviceStat$Uptime;->idletime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 317
    const/4 v0, 0x1

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
