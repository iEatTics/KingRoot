.class final Lcom/kingroot/kinguser/ahb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aik;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ahb;->a(Ljava/lang/String;IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic anA:J

.field final synthetic anx:Ljava/lang/String;

.field final synthetic any:I

.field final synthetic anz:J


# direct methods
.method constructor <init>(Ljava/lang/String;IJJ)V
    .locals 1

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kingroot/kinguser/ahb$1;->anx:Ljava/lang/String;

    iput p2, p0, Lcom/kingroot/kinguser/ahb$1;->any:I

    iput-wide p3, p0, Lcom/kingroot/kinguser/ahb$1;->anz:J

    iput-wide p5, p0, Lcom/kingroot/kinguser/ahb$1;->anA:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    const-string v0, "delete from silent_install_perm where pkgName=?"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahb$1;->anx:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const-string v0, "insert into silent_install_perm (pkgName, rule, rtime, vtime) values (?,?,?,?)"

    .line 57
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahb$1;->anx:Ljava/lang/String;

    aput-object v2, v1, v3

    iget v2, p0, Lcom/kingroot/kinguser/ahb$1;->any:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/kingroot/kinguser/ahb$1;->anz:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/kingroot/kinguser/ahb$1;->anA:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method
