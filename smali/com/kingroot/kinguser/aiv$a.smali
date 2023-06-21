.class public Lcom/kingroot/kinguser/aiv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aiv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public asC:Ljava/lang/String;

.field public asD:Ljava/lang/String;

.field public retCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aiv$a;->asC:Ljava/lang/String;

    .line 453
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aiv$a;->asD:Ljava/lang/String;

    return-void
.end method
