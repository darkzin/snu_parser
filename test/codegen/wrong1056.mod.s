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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 41 of <array 97 of <array 86 of <array 38 of <array 97 of <char>>>>>>> %ebp+12 ]

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
l_f0_2_while_cond:
    movl    $29602, %eax            #   2:     add    t1 <- 29602, 54312
    movl    $54312, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t1 >= 87640 goto 3_while_body
    movl    $87640, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
l_f0_6_while_cond:
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
    jmp     l_f0_2_while_cond       #   8:     goto   2_while_cond
l_f0_1:
l_f0_9_while_cond:
    movl    $77816, %eax            #  11:     div    t2 <- 77816, 45699
    movl    $45699, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     if     t2 >= 16202 goto 10_while_body
    movl    $16202, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_10_while_body     
    jmp     l_f0_8                  #  13:     goto   8
l_f0_10_while_body:
    movl    $99, %eax               #  15:     if     99 > 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  16:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  18:     goto   12
l_f0_14_if_false:
l_f0_12:
    movl    $100, %eax              #  21:     assign v0 <- 100
    movb    %al, 8(%ebp)           
    jmp     l_f0_9_while_cond       #  22:     goto   9_while_cond
l_f0_8:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <char> %ebp-37 ]
    #    -44(%ebp)   4  [ $v0       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $21716, %eax            #   0:     sub    t1 <- 21716, 46299
    movl    $46299, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 66109
    movl    $66109, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t3 <- t2, 87584
    movl    $87584, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t4 <- t3, 68486
    movl    $68486, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v0 <- t4
    movl    %eax, -44(%ebp)        
    movl    $83968, %eax            #   5:     div    t5 <- 83968, 95061
    movl    $95061, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $16149, %eax            #   6:     add    t6 <- 16149, t5
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     return t6
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   8:     call   t7 <- dummyCHARfunc
    movb    %al, -37(%ebp)         

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 41 of <array 97 of <array 86 of <array 38 of <array 97 of <char>>>>>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 13 of <array 72 of <array 4 of <array 98 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #   -1260693136(%ebp)  1260693116  [ $v1       <array 41 of <array 97 of <array 86 of <array 38 of <array 97 of <char>>>>>> %ebp-1260693136 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1260693124, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $315173281, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1260693136(%ebp)    # local array 'v1': 5 dimensions
    movl    $41,-1260693132(%ebp)   #   dimension 1: 41 elements
    movl    $97,-1260693128(%ebp)   #   dimension 2: 97 elements
    movl    $86,-1260693124(%ebp)   #   dimension 3: 86 elements
    movl    $38,-1260693120(%ebp)   #   dimension 4: 38 elements
    movl    $97,-1260693116(%ebp)   #   dimension 5: 97 elements

    # function body
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    leal    -1260693136(%ebp), %eax #   1:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  1 <- t2
    pushl   %eax                   
    movl    $98, %eax               #   3:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #   4:     call   f0
    addl    $8, %esp               
    movl    $99, %eax               #   5:     if     99 >= 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   6:     goto   4_if_false
l_f2_3_if_true:
    movl    $0, %eax                #   8:     return 0
    jmp     l_f2_exit              
    movl    $97, %eax               #   9:     if     97 < 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #  10:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #  12:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_2                  #  15:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $1260693124, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    movl    $99, %eax               #   0:     if     99 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_5                #   4:     goto   5
l_test_5:
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyCHARfunc           #  11:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_12_while_cond:
    jmp     l_test_11               #  13:     goto   11
    jmp     l_test_11               #  14:     goto   11
    movl    $0, %eax                #  15:     assign v0 <- 0
    movb    %al, v0                
    movl    $76747, %eax            #  16:     assign v1 <- 76747
    movl    %eax, v1               
    jmp     l_test_12_while_cond    #  17:     goto   12_while_cond
l_test_11:

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
