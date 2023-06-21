.class public Lcom/kingroot/kinguser/cfc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public bZH:Ljava/util/BitSet;

.field public bZI:Ljava/lang/String;

.field public bZJ:I

.field public bZK:Z

.field public bZL:Z

.field public bZM:J

.field public bZN:I

.field public bZO:I

.field public bZP:J

.field public bZQ:J

.field public bZR:Ljava/lang/String;

.field public bZS:Ljava/lang/String;

.field public cmd:I

.field public retCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfc$a;->bZH:Ljava/util/BitSet;

    .line 341
    iput v2, p0, Lcom/kingroot/kinguser/cfc$a;->cmd:I

    .line 342
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cfc$a;->bZI:Ljava/lang/String;

    .line 343
    iput v2, p0, Lcom/kingroot/kinguser/cfc$a;->bZJ:I

    .line 344
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfc$a;->bZK:Z

    .line 345
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfc$a;->bZL:Z

    .line 346
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cfc$a;->bZM:J

    .line 347
    iput v2, p0, Lcom/kingroot/kinguser/cfc$a;->bZN:I

    .line 348
    iput v2, p0, Lcom/kingroot/kinguser/cfc$a;->bZO:I

    .line 349
    iput v2, p0, Lcom/kingroot/kinguser/cfc$a;->retCode:I

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cfc$a;->bZP:J

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cfc$a;->bZQ:J

    .line 352
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cfc$a;->bZR:Ljava/lang/String;

    .line 353
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cfc$a;->bZS:Ljava/lang/String;

    return-void
.end method
