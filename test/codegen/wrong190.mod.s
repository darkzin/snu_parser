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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 8 of <array 5 of <array 8 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -18(%ebp)   1  [ $v2       <char> %ebp-18 ]

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
    jmp     l_f0_exit              
    call    dummyINTfunc            #   1:     call   t7 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   2:     call   t8 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     assign v2 <- t8
    movb    %al, -18(%ebp)         

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
l_f1_5_while_cond:
    movl    $47228, %eax            #   3:     if     47228 = 3927 goto 6_while_body
    movl    $3927, %ebx            
    cmpl    %ebx, %eax             
    je      l_f1_6_while_body      
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #  10:     call   t7 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $97104, %eax            #  11:     if     97104 > t7 goto 9_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  12:     goto   10_if_false
l_f1_9_if_true:
    call    dummyBOOLfunc           #  14:     call   t8 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_f1_14_while_cond:
    jmp     l_f1_14_while_cond      #  16:     goto   14_while_cond
l_f1_17_while_cond:
    jmp     l_f1_17_while_cond      #  18:     goto   17_while_cond
    jmp     l_f1_8                  #  19:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 10 of <array 2 of <array 9 of <array 2 of <int>>>>>>> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <char> %ebp-21 ]

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
l_f2_1_while_cond:
    movl    $1, %eax                #   1:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   2:     goto   6
    movl    $0, %eax                #   3:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movl    $1, %eax                #   5:     if     1 # t7 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_while_body:
    call    dummyProcedure          #   8:     call   dummyProcedure
l_f2_10_while_cond:
    jmp     l_f2_10_while_cond      #  10:     goto   10_while_cond
    movl    $97, %eax               #  11:     assign v2 <- 97
    movb    %al, -21(%ebp)         
    jmp     l_f2_1_while_cond       #  12:     goto   1_while_cond
l_f2_0:
    call    dummyINTfunc            #  14:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #  15:     if     100 > 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  16:     goto   16_if_false
l_f2_15_if_true:
l_f2_19_while_cond:
    jmp     l_f2_20_while_body      #  19:     goto   20_while_body
    jmp     l_f2_18                 #  20:     goto   18
l_f2_20_while_body:
    jmp     l_f2_19_while_cond      #  22:     goto   19_while_cond
l_f2_18:
    jmp     l_f2_14                 #  24:     goto   14
l_f2_16_if_false:
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99, %eax               #   0:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    call    ReadInt                 #   2:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_4                #   3:     goto   4
    jmp     l_test_4                #   4:     goto   4
    jmp     l_test_4                #   5:     goto   4
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_5                #   7:     goto   5
l_test_4:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_5:
    movzbl  -17(%ebp), %eax         #  11:     assign v0 <- t1
    movb    %al, v0                
    call    dummyCHARfunc           #  12:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  13:     assign v1 <- t2
    movb    %al, v1                
    movl    $87295, %eax            #  14:     sub    t3 <- 87295, 91765
    movl    $91765, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     add    t4 <- t3, 2120
    movl    $2120, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     sub    t5 <- t4, 39706
    movl    $39706, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     sub    t6 <- t5, 97486
    movl    $97486, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     assign v2 <- t6
    movl    %eax, v2               

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
