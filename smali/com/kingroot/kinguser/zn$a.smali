.class public Lcom/kingroot/kinguser/zn$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/zn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public WN:I

.field public WO:I

.field public WP:Ljava/lang/String;

.field public WQ:I

.field public mode:I

.field public size:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v2, p0, Lcom/kingroot/kinguser/zn$a;->WN:I

    .line 101
    iput v2, p0, Lcom/kingroot/kinguser/zn$a;->WO:I

    .line 104
    iput v2, p0, Lcom/kingroot/kinguser/zn$a;->mode:I

    .line 107
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/zn$a;->size:J

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 114
    iput v2, p0, Lcom/kingroot/kinguser/zn$a;->WQ:I

    return-void
.end method
