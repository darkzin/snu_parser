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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]

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
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, -14(%ebp)         
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   2:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
    #    -62(%ebp)   1  [ $t23      <char> %ebp-62 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 4 of <array 2 of <array 7 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -81(%ebp)   1  [ $v2       <char> %ebp-81 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   4:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $61483, %eax            #   5:     mul    t7 <- 61483, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   6:     add    t8 <- t7, 86555
    movl    $86555, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   9:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  10:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t11 <- t10, 29287
    movl    $29287, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  15:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     add    t14 <- t13, 41799
    movl    $41799, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  20:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     add    t17 <- t16, 58090
    movl    $58090, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  22:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  24:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  25:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  26:     add    t21 <- v0, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $97, %eax               #  27:     assign @t21 <- 97
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_0                  #  28:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_10_while_cond:
    movl    $0, %eax                #  32:     if     0 # 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_11_while_body     
    jmp     l_f1_9                  #  33:     goto   9
l_f1_11_while_body:
    call    dummyBOOLfunc           #  35:     call   t22 <- dummyBOOLfunc
    movb    %al, -61(%ebp)         
l_f1_15_while_cond:
    movl    $100, %eax              #  37:     if     100 <= 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_16_while_body     
    jmp     l_f1_14                 #  38:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  40:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_10_while_cond      #  42:     goto   10_while_cond
l_f1_9:
    call    dummyCHARfunc           #  44:     call   t23 <- dummyCHARfunc
    movb    %al, -62(%ebp)         
    movzbl  -62(%ebp), %eax         #  45:     return t23
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 9 of <array 6 of <array 7 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 5 of <array 4 of <array 4 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 1 of <array 8 of <array 8 of <array 7 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f2_1_while_cond:
    movl    $22194, %eax            #   1:     if     22194 = 63970 goto 2_while_body
    movl    $63970, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_4                  #   4:     goto   4
l_f2_4:
    movl    $100, %eax              #   6:     assign v3 <- 100
    movb    %al, 20(%ebp)          
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
    jmp     l_f2_10_if_true         #  10:     goto   10_if_true
    jmp     l_f2_10_if_true         #  11:     goto   10_if_true
l_f2_10_if_true:
    jmp     l_f2_9                  #  13:     goto   9
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t5       <bool> %ebp-23 ]

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
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 > t1 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    call    ReadInt                 #   8:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #   9:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    call    dummyBOOLfunc           #  10:     call   t4 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_test_12_if_false      #  11:     goto   12_if_false
    jmp     l_test_10               #  12:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_exit            
    jmp     l_test_5                #  16:     goto   5
l_test_5:
    jmp     l_test_exit            
l_test_16_while_cond:
    call    dummyBOOLfunc           #  20:     call   t5 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  21:     if     t5 = 1 goto 17_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  23:     goto   16_while_cond
    jmp     l_test_24               #  24:     goto   24
l_test_24:
    movl    $97, %eax               #  26:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $97, %eax               #  28:     assign v0 <- 97
    movb    %al, v0                
    movl    $0, %eax                #  29:     if     0 # 0 goto 31_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_31_if_true      
    jmp     l_test_32_if_false      #  30:     goto   32_if_false
l_test_31_if_true:
    jmp     l_test_30               #  32:     goto   30
l_test_32_if_false:
l_test_30:
    jmp     l_test_exit            
    movl    $99, %eax               #  36:     if     99 < 99 goto 36_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_36_if_true      
    jmp     l_test_37_if_false      #  37:     goto   37_if_false
l_test_36_if_true:
    jmp     l_test_35               #  39:     goto   35
l_test_37_if_false:
l_test_35:
    jmp     l_test_41_if_false      #  42:     goto   41_if_false
    jmp     l_test_39               #  43:     goto   39
l_test_41_if_false:
l_test_39:
    jmp     l_test_exit            
    jmp     l_test_21               #  47:     goto   21
l_test_21:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
