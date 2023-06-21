.class public Lcom/kingroot/kinguser/bxz$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bxz;
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
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Lcom/kingroot/kinguser/bxz$b;->mCmdFlag:Ljava/lang/String;

    .line 430
    iput-object p2, p0, Lcom/kingroot/kinguser/bxz$b;->mExitValue:Ljava/lang/Integer;

    .line 431
    iput-object p3, p0, Lcom/kingroot/kinguser/bxz$b;->mStdOut:Ljava/lang/String;

    .line 432
    iput-object p4, p0, Lcom/kingroot/kinguser/bxz$b;->mStdErr:Ljava/lang/String;

    .line 433
    return-void
.end method
