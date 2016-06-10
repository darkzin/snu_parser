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
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 14 of <array 45 of <array 23 of <array 90 of <array 82 of <int>>>>>>> %ebp+8 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    movl    $20348, %eax            #   5:     if     20348 < 37073 goto 6_while_body
    movl    $37073, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_6_while_body      
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   8:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
    movl    $29106, %eax            #  12:     add    t1 <- 29106, 42817
    movl    $42817, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     add    t2 <- t1, 37905
    movl    $37905, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t3 <- t2, 60451
    movl    $60451, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     assign v1 <- t3
    movl    %eax, -28(%ebp)        
    movl    $100, %eax              #  16:     if     100 # 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  17:     goto   11_if_false
l_f0_10_if_true:
    movl    $0, %eax                #  19:     assign v2 <- 0
    movb    %al, -29(%ebp)         
    jmp     l_f0_9                  #  20:     goto   9
l_f0_11_if_false:
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

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
    movl    $12915, %eax            #   1:     assign v0 <- 12915
    movl    %eax, -20(%ebp)        
    movl    $77787, %eax            #   2:     return 77787
    jmp     l_f1_exit              
    movl    $28237, %eax            #   3:     return 28237
    jmp     l_f1_exit              
    movl    $19433, %eax            #   4:     return 19433
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
    call    dummyINTfunc            #   6:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $70626, %eax            #   7:     param  0 <- 70626
    pushl   %eax                   
    call    WriteInt                #   8:     call   WriteInt
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 14 of <array 45 of <array 23 of <array 90 of <array 82 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #   -427744848(%ebp)  427744824  [ $v0       <array 14 of <array 45 of <array 23 of <array 90 of <array 82 of <int>>>>>> %ebp-427744848 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $427744836, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $106936209, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-427744848(%ebp)     # local array 'v0': 5 dimensions
    movl    $14,-427744844(%ebp)    #   dimension 1: 14 elements
    movl    $45,-427744840(%ebp)    #   dimension 2: 45 elements
    movl    $23,-427744836(%ebp)    #   dimension 3: 23 elements
    movl    $90,-427744832(%ebp)    #   dimension 4: 90 elements
    movl    $82,-427744828(%ebp)    #   dimension 5: 82 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
l_f2_2_while_body:
    movl    $46437, %eax            #   4:     if     46437 = 9666 goto 9_if_true
    movl    $9666, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   5:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #   7:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_13_while_cond:
    leal    -427744848(%ebp), %eax  #  12:     &()    t1 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  14:     call   t2 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  15:     if     t2 = 1 goto 14_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_14_while_body     
    jmp     l_f2_12                 #  16:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  18:     goto   13_while_cond
l_f2_12:
    call    f1                      #  20:     call   t3 <- f1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     return t3
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $427744836, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    jmp     l_test_exit            
    movl    $94044, %eax            #   1:     if     94044 # 42306 goto 2_if_true
    movl    $42306, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
l_test_9_while_cond:
    jmp     l_test_9_while_cond     #   7:     goto   9_while_cond
    jmp     l_test_1                #   8:     goto   1
l_test_3_if_false:
l_test_1:
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  12:     goto   12_while_cond
l_test_17_while_cond:
    movl    $97, %eax               #  14:     assign v0 <- 97
    movb    %al, v0                
    call    dummyINTfunc            #  15:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_17_while_cond    #  16:     goto   17_while_cond

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
