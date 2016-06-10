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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 21 of <array 24 of <array 61 of <array 4 of <array 61 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 23 of <array 48 of <array 16 of <array 82 of <array 34 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 22 of <array 13 of <array 68 of <array 28 of <array 27 of <char>>>>>>> %ebp+16 ]
    #    -15(%ebp)   1  [ $v3       <bool> %ebp-15 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_1                  #   1:     goto   1
l_f0_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
    movl    $0, %eax                #   5:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   7:     assign v3 <- t1
    movb    %al, -15(%ebp)         
l_f0_10_while_cond:
    call    dummyCHARfunc           #   9:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     if     t2 >= 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_11_while_body     
    jmp     l_f0_9                  #  11:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  13:     goto   10_while_cond
l_f0_9:
    movl    $97, %eax               #  15:     return 97
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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 22 of <array 13 of <array 68 of <array 28 of <array 27 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 23 of <array 48 of <array 16 of <array 82 of <array 34 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 21 of <array 24 of <array 61 of <array 4 of <array 61 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $v0       <int> %ebp-36 ]
    #   -7501596(%ebp)  7501560  [ $v1       <array 21 of <array 24 of <array 61 of <array 4 of <array 61 of <bool>>>>>> %ebp-7501596 ]
    #   -56748852(%ebp)  49247256  [ $v2       <array 23 of <array 48 of <array 16 of <array 82 of <array 34 of <bool>>>>>> %ebp-56748852 ]
    #   -71451564(%ebp)  14702712  [ $v3       <array 22 of <array 13 of <array 68 of <array 28 of <array 27 of <char>>>>>> %ebp-71451564 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $71451552, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17862888, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-7501596(%ebp)       # local array 'v1': 5 dimensions
    movl    $21,-7501592(%ebp)      #   dimension 1: 21 elements
    movl    $24,-7501588(%ebp)      #   dimension 2: 24 elements
    movl    $61,-7501584(%ebp)      #   dimension 3: 61 elements
    movl    $4,-7501580(%ebp)       #   dimension 4: 4 elements
    movl    $61,-7501576(%ebp)      #   dimension 5: 61 elements
    movl    $5,-56748852(%ebp)      # local array 'v2': 5 dimensions
    movl    $23,-56748848(%ebp)     #   dimension 1: 23 elements
    movl    $48,-56748844(%ebp)     #   dimension 2: 48 elements
    movl    $16,-56748840(%ebp)     #   dimension 3: 16 elements
    movl    $82,-56748836(%ebp)     #   dimension 4: 82 elements
    movl    $34,-56748832(%ebp)     #   dimension 5: 34 elements
    movl    $5,-71451564(%ebp)      # local array 'v3': 5 dimensions
    movl    $22,-71451560(%ebp)     #   dimension 1: 22 elements
    movl    $13,-71451556(%ebp)     #   dimension 2: 13 elements
    movl    $68,-71451552(%ebp)     #   dimension 3: 68 elements
    movl    $28,-71451548(%ebp)     #   dimension 4: 28 elements
    movl    $27,-71451544(%ebp)     #   dimension 5: 27 elements

    # function body
    movl    $14463, %eax            #   0:     assign v0 <- 14463
    movl    %eax, -36(%ebp)        
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t1
    jmp     l_f1_exit              
l_f1_3_while_cond:
    leal    -71451564(%ebp), %eax   #   4:     &()    t2 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  2 <- t2
    pushl   %eax                   
    leal    -56748852(%ebp), %eax   #   6:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     param  1 <- t3
    pushl   %eax                   
    leal    -7501596(%ebp), %eax    #   8:     &()    t4 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  10:     call   t5 <- f0
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movl    $98, %eax               #  11:     if     98 >= t5 goto 4_while_body
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_4_while_body      
    jmp     l_f1_2                  #  12:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #  14:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $71451552, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
l_f2_4_while_cond:
    jmp     l_f2_3                  #   1:     goto   3
    jmp     l_f2_4_while_cond       #   2:     goto   4_while_cond
l_f2_3:
    call    dummyBOOLfunc           #   4:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_0                  #   5:     goto   0
l_f2_0:
    jmp     l_f2_8                  #   7:     goto   8
    jmp     l_f2_9                  #   8:     goto   9
l_f2_8:
    movl    $1, %eax                #  10:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_10                 #  11:     goto   10
l_f2_9:
    movl    $0, %eax                #  13:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_10:
    movzbl  -14(%ebp), %eax         #  15:     assign v1 <- t2
    movb    %al, 12(%ebp)          
    movl    $93238, %eax            #  16:     assign v2 <- 93238
    movl    %eax, -20(%ebp)        

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
l_test_2_while_cond:
    movl    $80595, %eax            #   2:     add    t0 <- 80595, 49093
    movl    $49093, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t0 = 51776 goto 3_while_body
    movl    $51776, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
