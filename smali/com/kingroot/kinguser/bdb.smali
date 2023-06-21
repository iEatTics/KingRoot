.class public Lcom/kingroot/kinguser/bdb;
.super Lcom/kingroot/kinguser/bdf;
.source "SourceFile"


# instance fields
.field public final biK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bde;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bde;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kingroot/kinguser/bdf;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    iput-object p4, p0, Lcom/kingroot/kinguser/bdb;->biK:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public Yp()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x7

    return v0
.end method
