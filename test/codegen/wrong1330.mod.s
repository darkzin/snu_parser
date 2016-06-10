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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 36 of <array 47 of <array 44 of <array 79 of <array 64 of <bool>>>>>>> %ebp+12 ]
    #    -37(%ebp)   1  [ $v2       <bool> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $85137, %eax            #   0:     mul    t5 <- 85137, 49346
    movl    $49346, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     div    t6 <- t5, 98749
    movl    $98749, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     mul    t7 <- t6, 5102
    movl    $5102, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     param  0 <- t7
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_3_if_false         #   5:     goto   3_if_false
    movl    $62081, %eax            #   6:     return 62081
    jmp     l_f0_exit              
    movl    $0, %eax                #   7:     assign v2 <- 0
    movb    %al, -37(%ebp)         
    movl    $87455, %eax            #   8:     return 87455
    jmp     l_f0_exit              
    jmp     l_f0_1                  #   9:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    ReadInt                 #  12:     call   t8 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     mul    t9 <- t8, 3687
    movl    $3687, %ebx            
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     mul    t10 <- t9, 46038
    movl    $46038, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     return t10
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 96 of <array 64 of <array 80 of <array 7 of <array 72 of <int>>>>>>> %ebp+8 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]

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
    jmp     l_f1_1                  #   0:     goto   1
    jmp     l_f1_1                  #   1:     goto   1
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t5
    movb    %al, -16(%ebp)         
l_f1_7_while_cond:
    movl    $35049, %eax            #  11:     if     35049 >= 99290 goto 10_if_true
    movl    $99290, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  12:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_if_false:
l_f1_9:
    call    dummyBOOLfunc           #  17:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_7_while_cond       #  18:     goto   7_while_cond
    call    dummyBOOLfunc           #  19:     call   t7 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t8       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v1       <bool> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t6 <- t5, 4128
    movl    $4128, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t6
    movl    %eax, -28(%ebp)        
    jmp     l_f2_3                  #   3:     goto   3
    jmp     l_f2_3                  #   4:     goto   3
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f2_4:
    movzbl  -21(%ebp), %eax         #  10:     assign v1 <- t7
    movb    %al, -29(%ebp)         
    jmp     l_f2_9                  #  11:     goto   9
    movl    $1, %eax                #  12:     assign t8 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_10                 #  13:     goto   10
l_f2_9:
    movl    $0, %eax                #  15:     assign t8 <- 0
    movb    %al, -22(%ebp)         
l_f2_10:
    movzbl  -22(%ebp), %eax         #  17:     assign v1 <- t8
    movb    %al, -29(%ebp)         

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     if     99 >= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $96006, %eax            #   4:     assign v0 <- 96006
    movl    %eax, v0               
    movl    $12767, %eax            #   5:     assign v0 <- 12767
    movl    %eax, v0               
    movl    $68412, %eax            #   6:     if     68412 = 48438 goto 10_if_true
    movl    $48438, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_10_if_true      
    jmp     l_test_11_if_false      #   7:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #   9:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_5_while_cond     #  12:     goto   5_while_cond
    jmp     l_test_0                #  13:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $42057, %eax            #  16:     mul    t0 <- 42057, 7271
    movl    $7271, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     mul    t1 <- t0, 51422
    movl    $51422, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     add    t2 <- t1, 12456
    movl    $12456, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     sub    t3 <- t2, 12053
    movl    $12053, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     assign v0 <- t3
    movl    %eax, v0               
    call    f2                      #  21:     call   t4 <- f2
    movl    %eax, -32(%ebp)        

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
