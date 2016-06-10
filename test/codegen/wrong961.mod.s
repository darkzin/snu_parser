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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 10 of <array 7 of <array 5 of <array 4 of <int>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   2:     if     98 >= t2 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     param  0 <- t3
    pushl   %eax                   
    call    WriteChar               #   9:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #  10:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  11:     return t4
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    movl    $98, %eax               #   0:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    movl    $95694, %eax            #   2:     assign v1 <- 95694
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 4 of <array 10 of <array 7 of <array 5 of <array 4 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 1 of <array 5 of <array 4 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 6 of <array 6 of <array 1 of <array 5 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 5 of <array 7 of <array 3 of <array 3 of <int>>>>>>> %ebp+20 ]
    #   -22444(%ebp)  22424  [ $v5       <array 4 of <array 10 of <array 7 of <array 5 of <array 4 of <int>>>>>> %ebp-22444 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $22432, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5608, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-22444(%ebp)         # local array 'v5': 5 dimensions
    movl    $4,-22440(%ebp)         #   dimension 1: 4 elements
    movl    $10,-22436(%ebp)        #   dimension 2: 10 elements
    movl    $7,-22432(%ebp)         #   dimension 3: 7 elements
    movl    $5,-22428(%ebp)         #   dimension 4: 5 elements
    movl    $4,-22424(%ebp)         #   dimension 5: 4 elements

    # function body
    movl    $99, %eax               #   0:     if     99 <= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    jmp     l_f2_4                  #   4:     goto   4
    jmp     l_f2_4                  #   5:     goto   4
    jmp     l_f2_4                  #   6:     goto   4
    jmp     l_f2_4                  #   7:     goto   4
    jmp     l_f2_4                  #   8:     goto   4
    jmp     l_f2_5_while_cond       #   9:     goto   5_while_cond
l_f2_4:
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_17_while_cond:
    leal    -22444(%ebp), %eax      #  15:     &()    t2 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  17:     call   t3 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  18:     if     t3 <= 97 goto 18_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_18_while_body     
    jmp     l_f2_16                 #  19:     goto   16
l_f2_18_while_body:
    jmp     l_f2_17_while_cond      #  21:     goto   17_while_cond
l_f2_16:
l_f2_21_while_cond:
    jmp     l_f2_20                 #  24:     goto   20
    jmp     l_f2_20                 #  25:     goto   20
    call    dummyBOOLfunc           #  26:     call   t4 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  27:     if     t4 = 1 goto 22_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_22_while_body     
    jmp     l_f2_20                 #  28:     goto   20
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  30:     goto   21_while_cond
l_f2_20:

l_f2_exit:
    # epilogue
    addl    $22432, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, v0                
l_test_2_while_cond:
    movl    $38223, %eax            #   2:     if     38223 = 2220 goto 3_while_body
    movl    $2220, %ebx            
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    call    dummyCHARfunc           #   6:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   7:     if     97 < t0 goto 7_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_7_while_body    
    jmp     l_test_5                #   8:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  10:     goto   6_while_cond
l_test_5:
    jmp     l_test_2_while_cond     #  12:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  15:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $0, %eax                #  16:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_exit            

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
