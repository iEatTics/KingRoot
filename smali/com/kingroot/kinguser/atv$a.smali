.class public Lcom/kingroot/kinguser/atv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public aQu:F

.field public aQv:F

.field public aQw:Landroid/widget/ImageView;

.field public ok:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/atv$a;->ok:Ljava/lang/String;

    .line 344
    iput v1, p0, Lcom/kingroot/kinguser/atv$a;->aQu:F

    .line 348
    iput v1, p0, Lcom/kingroot/kinguser/atv$a;->aQv:F

    return-void
.end method
