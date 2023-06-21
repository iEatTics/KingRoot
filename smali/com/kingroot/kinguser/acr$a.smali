.class public Lcom/kingroot/kinguser/acr$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/acr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public abg:I

.field public abh:Z

.field public abi:I

.field public abj:Z

.field public abk:I

.field public abl:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/kingroot/kinguser/acr$a;->abg:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/acr$a;->abh:Z

    .line 40
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/kingroot/kinguser/acr$a;->abi:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/acr$a;->abj:Z

    .line 44
    iput v1, p0, Lcom/kingroot/kinguser/acr$a;->abk:I

    .line 45
    iput v1, p0, Lcom/kingroot/kinguser/acr$a;->abl:I

    return-void
.end method
