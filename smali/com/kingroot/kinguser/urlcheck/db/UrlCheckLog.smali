.class public Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;",
            ">;"
        }
    .end annotation
.end field

.field private static final amI:Ljava/lang/String;

.field private static final amJ:Ljava/lang/String;

.field private static final amK:Ljava/lang/String;

.field private static final amL:Ljava/lang/String;

.field private static final bny:[Ljava/lang/String;

.field private static final bnz:[Ljava/lang/String;


# instance fields
.field public GY:Ljava/lang/String;

.field public bno:I

.field public bnu:I

.field public bnv:J

.field public bnw:I

.field public bnx:Z

.field public id:J

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f0704e0

    .line 30
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704df

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 32
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 33
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 34
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    .line 35
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704e1

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 36
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704e2

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 37
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704e3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 38
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704e4

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 39
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704e5

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704e5

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bny:[Ljava/lang/String;

    .line 43
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704eb

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 45
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704ec

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704ed

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704ee

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704ef

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 49
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704f0

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704f1

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 51
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704f2

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704f3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnz:[Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070330

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->amI:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070331

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->amJ:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07032f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->amK:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07032e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->amL:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->GY:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    .line 62
    iput p1, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    .line 63
    iput-object p3, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->GY:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;IJZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->GY:Ljava/lang/String;

    .line 67
    iput-wide p1, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->id:J

    .line 68
    iput p3, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    .line 69
    iput-object p4, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    .line 70
    iput p5, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    .line 71
    iput-wide p6, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnv:J

    .line 72
    iput-boolean p8, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    .line 73
    iput-object p9, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->GY:Ljava/lang/String;

    .line 74
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v1, ""

    iput-object v1, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    .line 28
    const-string v1, ""

    iput-object v1, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->GY:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->id:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnv:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnw:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->GY:Ljava/lang/String;

    .line 85
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public aaO()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    iget v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    if-gtz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    .line 122
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    sget-object v1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bny:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 123
    const/4 v0, 0x7

    iput v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0702e2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bny:[Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aaP()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    if-gtz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    .line 134
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    sget-object v1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bny:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 135
    const/4 v0, 0x7

    iput v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    .line 137
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnz:[Ljava/lang/String;

    iget v1, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public aaQ()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/32 v8, 0x5265c00

    const-wide/32 v6, 0x36ee80

    const-wide/32 v4, 0xea60

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    iget-wide v2, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnv:J

    sub-long/2addr v0, v2

    .line 144
    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    .line 145
    sget-object v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->amI:Ljava/lang/String;

    .line 151
    :goto_0
    return-object v0

    .line 146
    :cond_0
    cmp-long v2, v0, v6

    if-gtz v2, :cond_1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->amJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_1
    cmp-long v2, v0, v8

    if-gtz v2, :cond_2

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->amK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v8

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->amL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public dQ(Z)V
    .locals 4

    .prologue
    .line 157
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v1, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;-><init>(ILjava/lang/String;IZ)V

    .line 162
    invoke-static {}, Lcom/kingroot/kinguser/bfp;->aay()Lcom/kingroot/kinguser/bfp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfp;->addRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 172
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    if-nez v0, :cond_1

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0

    .line 176
    :cond_1
    check-cast p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    iget-object v1, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-wide v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnv:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-boolean v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->GY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
