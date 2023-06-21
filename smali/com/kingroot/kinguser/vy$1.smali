.class Lcom/kingroot/kinguser/vy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/vy;->H(J)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Mk:Ljava/util/List;

.field final synthetic Ml:Lcom/kingroot/kinguser/vy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/vy;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kingroot/kinguser/vy$1;->Ml:Lcom/kingroot/kinguser/vy;

    iput-object p2, p0, Lcom/kingroot/kinguser/vy$1;->Mk:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/vy$1;->Ml:Lcom/kingroot/kinguser/vy;

    iget-object v1, p0, Lcom/kingroot/kinguser/vy$1;->Mk:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/kingroot/kinguser/vy;->a(Lcom/kingroot/kinguser/vy;Ljava/util/List;Landroid/database/Cursor;)V

    .line 114
    return-void
.end method
