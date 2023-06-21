.class public Lcom/kingroot/kinguser/cea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bXK:Z

.field public bXL:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v0, p0, Lcom/kingroot/kinguser/cea;->bXK:Z

    .line 11
    iput-boolean v0, p0, Lcom/kingroot/kinguser/cea;->bXL:Z

    return-void
.end method
