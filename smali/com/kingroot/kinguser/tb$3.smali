.class Lcom/kingroot/kinguser/tb$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/tb;->b(IILjava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic GR:Ljava/util/List;

.field final synthetic GS:Lcom/kingroot/kinguser/tb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/tb;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/kingroot/kinguser/tb$3;->GS:Lcom/kingroot/kinguser/tb;

    iput-object p2, p0, Lcom/kingroot/kinguser/tb$3;->GR:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/tb$3;->GR:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/kingroot/kinguser/sx;->a(Ljava/util/List;Landroid/database/Cursor;Z)V

    .line 245
    return-void
.end method
