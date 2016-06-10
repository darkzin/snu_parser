##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t1 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     return t2
    jmp     l_f0_exit              
    jmp     l_f0_6_if_false         #   9:     goto   6_if_false
l_f0_8_while_cond:
    movl    $57908, %eax            #  11:     if     57908 >= 71630 goto 9_while_body
    movl    $71630, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_9_while_body      
    jmp     l_f0_7                  #  12:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  14:     goto   8_while_cond
l_f0_7:
    jmp     l_f0_4                  #  16:     goto   4
l_f0_6_if_false:
l_f0_4:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $99, %eax               #   0:     if     99 > 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t1
    movb    %al, 12(%ebp)          
    call    dummyINTfunc            #   9:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f1_7_while_cond:
    movl    $100, %eax              #  11:     if     100 # 99 goto 10
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_10                
    jmp     l_f1_11                 #  12:     goto   11
l_f1_10:
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_12                 #  15:     goto   12
l_f1_11:
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f1_12:
    movzbl  -21(%ebp), %eax         #  19:     return t3
    jmp     l_f1_exit              
l_f1_15_while_cond:
    jmp     l_f1_15_while_cond      #  21:     goto   15_while_cond
    jmp     l_f1_7_while_cond       #  22:     goto   7_while_cond

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t17      <char> %ebp-45 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t19      <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 36 of <array 16 of <array 68 of <array 58 of <array 72 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 57 of <array 79 of <array 45 of <array 4 of <int>>>>>>> %ebp+16 ]
    #    -89(%ebp)   1  [ $v3       <bool> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    movl    $100, %eax              #   2:     return 100
    jmp     l_f2_exit              
    movl    $99, %eax               #   3:     return 99
    jmp     l_f2_exit              
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   5:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   6:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $67026, %eax            #   7:     mul    t2 <- 67026, t1
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   8:     add    t3 <- t2, 49960
    movl    $49960, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  12:     mul    t5 <- t3, t4
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  13:     add    t6 <- t5, 8828
    movl    $8828, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  17:     mul    t8 <- t6, t7
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  18:     add    t9 <- t8, 32767
    movl    $32767, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -88(%ebp), %eax         #  22:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t12 <- t11, 84508
    movl    $84508, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     mul    t13 <- t12, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    16(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  26:     call   t14 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  27:     add    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    16(%ebp), %eax          #  28:     add    t16 <- v2, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $98633, %eax            #  29:     assign @t16 <- 98633
    movl    -44(%ebp), %edi        
    movl    %eax, (%edi)           
l_f2_7_while_cond:
    movl    $15298, %eax            #  31:     if     15298 >= 23776 goto 8_while_body
    movl    $23776, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_8_while_body      
    jmp     l_f2_6                  #  32:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  34:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_1_while_cond       #  36:     goto   1_while_cond
l_f2_0:
l_f2_11_while_cond:
    movl    $98, %eax               #  39:     if     98 >= 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_12_while_body     
    jmp     l_f2_10                 #  40:     goto   10
l_f2_12_while_body:
l_f2_15_while_cond:
    jmp     l_f2_14                 #  43:     goto   14
    jmp     l_f2_15_while_cond      #  44:     goto   15_while_cond
l_f2_14:
    call    dummyCHARfunc           #  46:     call   t17 <- dummyCHARfunc
    movb    %al, -45(%ebp)         
    movl    $98, %eax               #  47:     return 98
    jmp     l_f2_exit              
    movl    $99, %eax               #  48:     return 99
    jmp     l_f2_exit              
    call    ReadInt                 #  49:     call   t18 <- ReadInt
    movl    %eax, -52(%ebp)        
    movl    $0, %eax                #  50:     assign v3 <- 0
    movb    %al, -89(%ebp)         
    jmp     l_f2_18                 #  51:     goto   18
l_f2_18:
    jmp     l_f2_11_while_cond      #  53:     goto   11_while_cond
l_f2_10:
    call    dummyCHARfunc           #  55:     call   t19 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movl    $97, %eax               #  56:     if     97 > t19 goto 26_if_true
    movzbl  -53(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_26_if_true        
    jmp     l_f2_27_if_false        #  57:     goto   27_if_false
l_f2_26_if_true:
    jmp     l_f2_31_if_false        #  59:     goto   31_if_false
    jmp     l_f2_29                 #  60:     goto   29
l_f2_31_if_false:
l_f2_29:
    jmp     l_f2_25                 #  63:     goto   25
l_f2_27_if_false:
l_f2_25:

l_f2_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_4                #   1:     goto   4
l_test_4:
    movl    $98, %eax               #   3:     if     98 < 98 goto 8_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_8_if_true       
    jmp     l_test_9_if_false       #   4:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #   6:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_14               #  13:     goto   14
    jmp     l_test_14               #  14:     goto   14
    jmp     l_test_14               #  15:     goto   14
    movl    $1, %eax                #  16:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_15               #  17:     goto   15
l_test_14:
    movl    $0, %eax                #  19:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_15:
    movzbl  -13(%ebp), %eax         #  21:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
l_test_21_while_cond:
    jmp     l_test_20               #  24:     goto   20
    jmp     l_test_20               #  25:     goto   20
    jmp     l_test_20               #  26:     goto   20
    jmp     l_test_20               #  27:     goto   20
    jmp     l_test_21_while_cond    #  28:     goto   21_while_cond
l_test_20:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
