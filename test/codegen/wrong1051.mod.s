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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     assign v1 <- 98
    movb    %al, 8(%ebp)           
    call    ReadInt                 #   2:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t4 <- t3, 27232
    movl    $27232, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     return t4
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t21      <bool> %ebp-61 ]
    #    -62(%ebp)   1  [ $t22      <char> %ebp-62 ]
    #    -68(%ebp)   4  [ $t3       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 45 of <array 67 of <array 47 of <array 96 of <array 70 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -93(%ebp)   1  [ $v4       <bool> %ebp-93 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_2_while_body       #   2:     goto   2_while_body
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   6:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   7:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $91496, %eax            #   8:     mul    t3 <- 91496, t2
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   9:     add    t4 <- t3, 86838
    movl    $86838, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  13:     mul    t6 <- t4, t5
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  14:     add    t7 <- t6, 73237
    movl    $73237, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  18:     mul    t9 <- t7, t8
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  19:     add    t10 <- t9, 53796
    movl    $53796, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  23:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t13 <- t12, 12140
    movl    $12140, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     mul    t14 <- t13, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  27:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  28:     add    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  29:     add    t17 <- v1, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $0, %eax                #  30:     assign @t17 <- 0
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
l_f1_7_while_cond:
    jmp     l_f1_6                  #  32:     goto   6
    jmp     l_f1_7_while_cond       #  33:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_11_if_false        #  35:     goto   11_if_false
    jmp     l_f1_9                  #  36:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_1_while_cond       #  39:     goto   1_while_cond
l_f1_0:
    movl    $38600, %eax            #  41:     sub    t18 <- 38600, 47326
    movl    $47326, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  42:     sub    t19 <- t18, 20641
    movl    $20641, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  43:     add    t20 <- t19, 14303
    movl    $14303, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $20298, %eax            #  44:     if     20298 # t20 goto 13
    movl    -60(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_13                
    jmp     l_f1_14                 #  45:     goto   14
l_f1_13:
    movl    $1, %eax                #  47:     assign t21 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_f1_15                 #  48:     goto   15
l_f1_14:
    movl    $0, %eax                #  50:     assign t21 <- 0
    movb    %al, -61(%ebp)         
l_f1_15:
    movzbl  -61(%ebp), %eax         #  52:     assign v4 <- t21
    movb    %al, -93(%ebp)         
    call    dummyCHARfunc           #  53:     call   t22 <- dummyCHARfunc
    movb    %al, -62(%ebp)         

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 57 of <array 95 of <array 15 of <array 91 of <array 10 of <char>>>>>>> %ebp+8 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
l_f2_1_while_cond:
    movl    $97, %eax               #   1:     if     97 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $8332, %eax             #   4:     if     8332 >= 11930 goto 5
    movl    $11930, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_5                 
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   8:     goto   7
l_f2_6:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  12:     return t2
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  13:     goto   1_while_cond
l_f2_0:
    movl    $98, %eax               #  15:     if     98 >= 97 goto 13
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_13                
    jmp     l_f2_14                 #  16:     goto   14
l_f2_13:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_15                 #  19:     goto   15
l_f2_14:
    movl    $0, %eax                #  21:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_15:
    movzbl  -14(%ebp), %eax         #  23:     return t3
    jmp     l_f2_exit              
    movl    $1, %eax                #  24:     assign v2 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_9                  #  25:     goto   9
l_f2_9:
    call    dummyBOOLfunc           #  27:     call   t4 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    movl    $100, %eax              #   1:     if     100 < 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $97, %eax               #   4:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_4                #   5:     goto   4
l_test_4:
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    call    ReadInt                 #   9:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    movl    $97, %eax               #  11:     if     97 <= 97 goto 14
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_14              
    jmp     l_test_15               #  12:     goto   15
l_test_14:
    movl    $1, %eax                #  14:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_16               #  15:     goto   16
l_test_15:
    movl    $0, %eax                #  17:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_16:
    movzbl  -17(%ebp), %eax         #  19:     assign v1 <- t1
    movb    %al, v1                
    movl    $63370, %eax            #  20:     assign v2 <- 63370
    movl    %eax, v2               
l_test_20_while_cond:
    jmp     l_test_20_while_cond    #  22:     goto   20_while_cond
    jmp     l_test_10               #  23:     goto   10
l_test_10:
l_test_23_while_cond:
    movl    $99919, %eax            #  26:     if     99919 > 24144 goto 24_while_body
    movl    $24144, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_24_while_body   
    jmp     l_test_22               #  27:     goto   22
l_test_24_while_body:
    movl    $83056, %eax            #  29:     assign v2 <- 83056
    movl    %eax, v2               
    jmp     l_test_26               #  30:     goto   26
l_test_26:
    jmp     l_test_23_while_cond    #  32:     goto   23_while_cond
l_test_22:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
