.class public Lcom/kingroot/kinguser/agc$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public akv:Ljava/lang/String;

.field public akw:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mTime:J

.field public mType:I


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/agc$c;->akv:Ljava/lang/String;

    .line 377
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/agc$c;->mPackageName:Ljava/lang/String;

    .line 378
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/agc$c;->akw:Ljava/lang/String;

    .line 381
    iput p1, p0, Lcom/kingroot/kinguser/agc$c;->mType:I

    .line 382
    iput-wide p2, p0, Lcom/kingroot/kinguser/agc$c;->mTime:J

    .line 383
    iput-object p4, p0, Lcom/kingroot/kinguser/agc$c;->akv:Ljava/lang/String;

    .line 384
    iput-object p5, p0, Lcom/kingroot/kinguser/agc$c;->mPackageName:Ljava/lang/String;

    .line 385
    iput-object p6, p0, Lcom/kingroot/kinguser/agc$c;->akw:Ljava/lang/String;

    .line 386
    return-void
.end method
