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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 95 of <array 43 of <array 29 of <array 8 of <array 53 of <char>>>>>>> %ebp+8 ]

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
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_3_while_cond:
    call    dummyBOOLfunc           #   3:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #   4:     if     0 # t6 goto 4_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_4_while_body      
    jmp     l_f0_2                  #   5:     goto   2
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   7:     goto   3_while_cond
l_f0_2:

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
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 54 of <array 80 of <array 42 of <array 81 of <array 78 of <int>>>>>>> %ebp+8 ]
    #   -100(%ebp)   4  [ $v1       <int> %ebp-100 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    ReadInt                 #   1:     call   t5 <- ReadInt
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   2:     assign v1 <- t5
    movl    %eax, -100(%ebp)       
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   4:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   5:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $26895, %eax            #   6:     mul    t7 <- 26895, t6
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   7:     add    t8 <- t7, 1809
    movl    $1809, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  11:     mul    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $75271, %eax            #  12:     add    t11 <- 75271, 65176
    movl    $65176, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     sub    t12 <- t11, 81918
    movl    $81918, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     sub    t13 <- t12, 79346
    movl    $79346, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     sub    t14 <- t13, 3273
    movl    $3273, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -16(%ebp), %eax         #  16:     add    t15 <- t10, t14
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  20:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     add    t18 <- t17, 99666
    movl    $99666, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  25:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  26:     add    t21 <- t20, 48119
    movl    $48119, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  27:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  29:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  30:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  31:     add    t25 <- v0, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $79054, %eax            #  32:     assign @t25 <- 79054
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f2_1_while_cond:
    call    ReadInt                 #   1:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $17725, %eax            #   2:     if     17725 > t5 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    call    dummyINTfunc            #   5:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    movl    $52844, %eax            #   8:     add    t7 <- 52844, 90660
    movl    $90660, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     assign v1 <- t7
    movl    %eax, -28(%ebp)        
l_f2_7_while_cond:
    movl    $13137, %eax            #  11:     if     13137 = 34291 goto 8_while_body
    movl    $34291, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #  12:     goto   6
l_f2_8_while_body:
l_f2_11_while_cond:
    movl    $25906, %eax            #  15:     if     25906 >= 186 goto 12_while_body
    movl    $186, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_12_while_body     
    jmp     l_f2_10                 #  16:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  18:     goto   11_while_cond
l_f2_10:
    movl    $18374, %eax            #  20:     return 18374
    jmp     l_f2_exit              
    jmp     l_f2_7_while_cond       #  21:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    leal    _str_1, %eax            #   4:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_0                #   8:     goto   0
l_test_2_if_false:
l_test_0:
l_test_6_while_cond:
    movl    $72584, %eax            #  12:     sub    t2 <- 72584, 54255
    movl    $54255, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $48175, %eax            #  13:     if     48175 > t2 goto 7_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #  14:     goto   5
l_test_7_while_body:
    call    dummyBOOLfunc           #  16:     call   t3 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_test_6_while_cond     #  17:     goto   6_while_cond
l_test_5:
    call    dummyBOOLfunc           #  19:     call   t4 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
