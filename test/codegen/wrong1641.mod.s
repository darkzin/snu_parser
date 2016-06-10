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
    #    -16(%ebp)   4  [ $v1       <int> %ebp-16 ]

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
    movl    $97, %eax               #   1:     if     97 > 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_exit              
    movl    $100, %eax              #   5:     if     100 # 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   6:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   8:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_1                  #  11:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_11_while_cond:
    movl    $3035, %eax             #  15:     assign v1 <- 3035
    movl    %eax, -16(%ebp)        
    jmp     l_f0_exit              
    jmp     l_f0_11_while_cond      #  17:     goto   11_while_cond

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
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 32 of <array 38 of <array 68 of <array 83 of <array 17 of <bool>>>>>>> %ebp+12 ]
    #    -45(%ebp)   1  [ $v3       <bool> %ebp-45 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #   1:     if     98 <= t3 goto 1
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -22(%ebp)         
l_f1_3:
    movzbl  -22(%ebp), %eax         #   9:     assign v3 <- t4
    movb    %al, -45(%ebp)         
l_f1_6_while_cond:
    movl    $83352, %eax            #  11:     add    t5 <- 83352, 84763
    movl    $84763, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $7656, %eax             #  12:     sub    t6 <- 7656, 43418
    movl    $43418, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     sub    t7 <- t6, 5125
    movl    $5125, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     sub    t8 <- t7, 61233
    movl    $61233, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  15:     sub    t9 <- t8, 14420
    movl    $14420, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -28(%ebp), %eax         #  16:     if     t5 <= t9 goto 7_while_body
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_7_while_body      
    jmp     l_f1_5                  #  17:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  19:     goto   6_while_cond
l_f1_5:
l_f1_10_while_cond:
    movl    $12616, %eax            #  22:     mul    t10 <- 12616, 47825
    movl    $47825, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     div    t11 <- t10, 20173
    movl    $20173, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $57491, %eax            #  24:     if     57491 >= t11 goto 11_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_11_while_body     
    jmp     l_f1_9                  #  25:     goto   9
l_f1_11_while_body:
    movl    $92306, %eax            #  27:     return 92306
    jmp     l_f1_exit              
    jmp     l_f1_10_while_cond      #  28:     goto   10_while_cond
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     assign v1 <- 97
    movb    %al, -14(%ebp)         
    jmp     l_f2_exit              

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
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-24 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
    jmp     l_test_3_while_body     #   3:     goto   3_while_body
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    movl    $99, %eax               #   8:     assign v0 <- 99
    movb    %al, v0                
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    leal    _str_1, %eax            #  10:     &()    t2 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  12:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_13_if_false      #  13:     goto   13_if_false
    jmp     l_test_14               #  14:     goto   14
l_test_14:
l_test_18_while_cond:
    movl    $97, %eax               #  17:     if     97 > 98 goto 19_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_19_while_body   
    jmp     l_test_17               #  18:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  20:     goto   18_while_cond
l_test_17:
    jmp     l_test_exit            
    movl    $91844, %eax            #  23:     assign v1 <- 91844
    movl    %eax, v1               
    movl    $99, %eax               #  24:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_11               #  25:     goto   11
l_test_13_if_false:
l_test_11:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
