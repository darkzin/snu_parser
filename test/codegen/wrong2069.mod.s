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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]

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
l_f0_1_while_cond:
    movl    $98, %eax               #   1:     if     98 >= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $100, %eax              #   4:     return 100
    jmp     l_f0_exit              
    movl    $99, %eax               #   5:     return 99
    jmp     l_f0_exit              
l_f0_7_while_cond:
    jmp     l_f0_7_while_cond       #   7:     goto   7_while_cond
    jmp     l_f0_1_while_cond       #   8:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  10:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  11:     return t3
    jmp     l_f0_exit              
l_f0_11_while_cond:
    movl    $20603, %eax            #  13:     sub    t4 <- 20603, 35549
    movl    $35549, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t5 <- t4, 15389
    movl    $15389, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $10473, %eax            #  15:     add    t6 <- 10473, 97048
    movl    $97048, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  16:     if     t5 < t6 goto 12_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_12_while_body     
    jmp     l_f0_10                 #  17:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  19:     goto   11_while_cond
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
l_f1_1_while_cond:
    jmp     l_f1_4                  #   1:     goto   4
l_f1_4:
    jmp     l_f1_2_while_body       #   3:     goto   2_while_body
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    movl    $6518, %eax             #   8:     sub    t3 <- 6518, 81181
    movl    $81181, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     assign v3 <- t3
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #  10:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  11:     return t4
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 73 of <array 30 of <array 37 of <array 76 of <array 40 of <int>>>>>>> %ebp+12 ]
    #    -17(%ebp)   1  [ $v4       <char> %ebp-17 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t3 >= 88888 goto 1_if_true
    movl    $88888, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $61012, %eax            #   4:     if     61012 > 25056 goto 5_if_true
    movl    $25056, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_9_while_cond:
    movl    $58884, %eax            #  14:     if     58884 < 25951 goto 10_while_body
    movl    $25951, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_10_while_body     
    jmp     l_f2_8                  #  15:     goto   8
l_f2_10_while_body:
    jmp     l_f2_14_if_false        #  17:     goto   14_if_false
    jmp     l_f2_12                 #  18:     goto   12
l_f2_14_if_false:
l_f2_12:
    movl    $14191, %eax            #  21:     return 14191
    jmp     l_f2_exit              
    jmp     l_f2_9_while_cond       #  22:     goto   9_while_cond
l_f2_8:
    movl    $98, %eax               #  24:     assign v4 <- 98
    movb    %al, -17(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    movl    $68270, %eax            #   3:     assign v1 <- 68270
    movl    %eax, v1               
    jmp     l_test_2                #   4:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $97, %eax               #   7:     if     97 > 97 goto 8_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_8_if_true       
    jmp     l_test_9_if_false       #   8:     goto   9_if_false
l_test_8_if_true:
    call    ReadInt                 #  10:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_7                #  11:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $6654, %eax             #  14:     add    t1 <- 6654, 11873
    movl    $11873, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     sub    t2 <- t1, 28383
    movl    $28383, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     assign v1 <- t2
    movl    %eax, v1               
    jmp     l_test_exit            

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
