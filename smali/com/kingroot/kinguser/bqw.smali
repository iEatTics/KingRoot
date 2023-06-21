.class public Lcom/kingroot/kinguser/bqw;
.super Lcom/kingroot/kinguser/bps$b;
.source "SourceFile"


# static fields
.field public static bIT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/bqw;->bIT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/kingroot/kinguser/bps$b;-><init>()V

    return-void
.end method


# virtual methods
.method public customCallback()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
