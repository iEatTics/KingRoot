.class final Lcom/kingroot/kinguser/bcr$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bcr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public biD:Z

.field public biE:I

.field public filePath:Ljava/lang/String;

.field public info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bcr$a;->biD:Z

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bcr$a;->biE:I

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bcr$a;->info:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bcr$a;->biD:Z

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bcr$a;->biE:I

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bcr$a;->info:Ljava/lang/String;

    .line 313
    iput-object p1, p0, Lcom/kingroot/kinguser/bcr$a;->filePath:Ljava/lang/String;

    .line 314
    iput p2, p0, Lcom/kingroot/kinguser/bcr$a;->biE:I

    .line 315
    iput-object p3, p0, Lcom/kingroot/kinguser/bcr$a;->info:Ljava/lang/String;

    .line 316
    iput-boolean p4, p0, Lcom/kingroot/kinguser/bcr$a;->biD:Z

    .line 317
    return-void
.end method


# virtual methods
.method public success()Z
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/kingroot/kinguser/bcr$a;->biE:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
