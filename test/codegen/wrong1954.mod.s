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
l_f0_1_while_cond:
    movl    $90813, %eax            #   1:     if     90813 >= 27661 goto 2_while_body
    movl    $27661, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   8:     call   t0 <- dummyCHARfunc
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 11 of <array 7 of <array 7 of <array 14 of <array 94 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t0
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_1                  #   3:     goto   1
    call    dummyCHARfunc           #   4:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_5                  #   5:     goto   5
l_f1_5:
    movl    $97, %eax               #   7:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
l_f1_1:
l_f1_10_while_cond:
    call    dummyCHARfunc           #  11:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  12:     if     t2 < 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_11_while_body     
    jmp     l_f1_9                  #  13:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  15:     goto   10_while_cond
l_f1_9:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 11 of <array 7 of <array 7 of <array 14 of <array 94 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 11 of <array 7 of <array 7 of <array 14 of <array 94 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 29 of <array 70 of <array 46 of <array 63 of <array 42 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 91 of <array 91 of <array 83 of <array 71 of <array 25 of <bool>>>>>>> %ebp+20 ]
    #   -709376(%ebp)  709348  [ $v4       <array 11 of <array 7 of <array 7 of <array 14 of <array 94 of <char>>>>>> %ebp-709376 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $709364, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $177341, %ecx          
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-709376(%ebp)        # local array 'v4': 5 dimensions
    movl    $11,-709372(%ebp)       #   dimension 1: 11 elements
    movl    $7,-709368(%ebp)        #   dimension 2: 7 elements
    movl    $7,-709364(%ebp)        #   dimension 3: 7 elements
    movl    $14,-709360(%ebp)       #   dimension 4: 14 elements
    movl    $94,-709356(%ebp)       #   dimension 5: 94 elements

    # function body
l_f2_1_while_cond:
    movl    $92529, %eax            #   1:     param  1 <- 92529
    pushl   %eax                   
    leal    -709376(%ebp), %eax     #   2:     &()    t0 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t0
    pushl   %eax                   
    call    f1                      #   4:     call   t1 <- f1
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     if     t1 # 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
    movl    $100, %eax              #  10:     if     100 >= 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #  11:     goto   6_if_false
l_f2_5_if_true:
    movl    $34562, %eax            #  13:     param  1 <- 34562
    pushl   %eax                   
    leal    -709376(%ebp), %eax     #  14:     &()    t2 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #  16:     call   t3 <- f1
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    jmp     l_f2_4                  #  17:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_11_if_false        #  20:     goto   11_if_false
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  22:     call   t4 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movl    $100, %eax              #  23:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  24:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_17_if_false        #  25:     goto   17_if_false
    jmp     l_f2_15                 #  26:     goto   15
l_f2_17_if_false:
l_f2_15:
    jmp     l_f2_9                  #  29:     goto   9
l_f2_11_if_false:
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $709364, %esp           # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_test_1_while_cond:
    movl    $100, %eax              #   1:     if     100 > 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
