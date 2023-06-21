.class public Lcom/kingroot/kinguser/ix$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final mCmdFlag:Ljava/lang/String;

.field public final mExitValue:Ljava/lang/Integer;

.field public final mStdErr:Ljava/lang/String;

.field public final mStdOut:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p1, p0, Lcom/kingroot/kinguser/ix$b;->mCmdFlag:Ljava/lang/String;

    .line 434
    iput-object p2, p0, Lcom/kingroot/kinguser/ix$b;->mExitValue:Ljava/lang/Integer;

    .line 435
    iput-object p3, p0, Lcom/kingroot/kinguser/ix$b;->mStdOut:Ljava/lang/String;

    .line 436
    iput-object p4, p0, Lcom/kingroot/kinguser/ix$b;->mStdErr:Ljava/lang/String;

    .line 437
    return-void
.end method


# virtual methods
.method public co()Z
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/kingroot/kinguser/ix$b;->mExitValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ix$b;->mExitValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
