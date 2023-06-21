.class public Lcom/kingroot/kinguser/amc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private azC:Ljava/lang/String;

.field private azD:Ljava/lang/String;

.field private azE:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public Ig()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/amc;->azE:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/amc;->azE:Landroid/graphics/Bitmap;

    .line 56
    return-void
.end method

.method public hu(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/kingroot/kinguser/amc;->azC:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public hv(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/kingroot/kinguser/amc;->azD:Ljava/lang/String;

    .line 48
    return-void
.end method
