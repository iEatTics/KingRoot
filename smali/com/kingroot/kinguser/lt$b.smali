.class Lcom/kingroot/kinguser/lt$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/lt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public vd:I

.field final synthetic ve:Lcom/kingroot/kinguser/lt;

.field public vf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/lt;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kingroot/kinguser/lt$b;->ve:Lcom/kingroot/kinguser/lt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/kingroot/kinguser/lt$b;->vf:Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/kingroot/kinguser/lt$b;->vd:I

    .line 44
    return-void
.end method
